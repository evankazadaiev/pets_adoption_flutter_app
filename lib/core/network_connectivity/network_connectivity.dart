import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pets_adoption/core/interfaces/initializable_interface.dart';

import '../interfaces/disposable_interface.dart';

abstract class INetworkConnectivity {
  Stream<bool> get connectionChange;
  Future<bool> get isOnline;
  Future<bool> checkConnection();
}

class NetworkConnectivity
    implements INetworkConnectivity, IDisposable, IInitializable {
  NetworkConnectivity();

  get onNetworkChange => Connectivity().onConnectivityChanged;

  //This tracks the current connection status
  bool hasConnection = false;

  //This is how we'll allow subscribing to connection changes
  StreamController<bool> connectionChangeController =
      StreamController.broadcast();

  //flutter_connectivity
  final Connectivity _connectivity = Connectivity();

  //Hook into flutter_connectivity's Stream to listen for changes
  //And check the connection status out of the gate
  @override
  Future<void> init() async {
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    checkConnection();
  }

  @override
  Stream<bool> get connectionChange => connectionChangeController.stream;

  Future<bool> get isOnline async => await _getHasConnection();

  //A clean up method to close our StreamController
  //   Because this is meant to exist through the entire application life cycle this isn't
  //   really an issue
  @override
  Future<void> dispose() async {
    connectionChangeController.close();
  }

  //flutter_connectivity's listener
  void _connectionChange(ConnectivityResult result) {
    checkConnection();
  }

  Future<bool> _getHasConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  //The test to actually see if there is a connection
  @override
  Future<bool> checkConnection() async {
    bool previousConnection = hasConnection;

    hasConnection = await _getHasConnection();

    //The connection status changed send out an update to all listeners
    if (previousConnection != hasConnection) {
      connectionChangeController.add(hasConnection);
    }

    return hasConnection;
  }
}
