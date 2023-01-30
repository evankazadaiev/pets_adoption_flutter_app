import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedGlobalModule {
  //#region DataSources
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  Dio dioClient() {
    return Dio();
  }

  //#endregion DataSources

  //#region Repositories

  //#endregion Repositories

  //#region UseCases

  //#endregion UseCases

//#region Cubits

//#endregion Cubits
}
