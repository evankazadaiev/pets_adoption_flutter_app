import 'package:bloc/bloc.dart';

class AppBottomBarCubit extends Cubit<int> {
  AppBottomBarCubit() : super(0);

  void selectBottomTab({required int value}) {
    emit(value);
  }
}
