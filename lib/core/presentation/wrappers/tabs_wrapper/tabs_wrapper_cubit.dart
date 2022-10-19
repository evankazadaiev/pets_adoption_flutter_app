import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'tabs_wrapper_state.dart';

class TabsWrapperCubit extends Cubit<TabsWrapperState> {
  TabsWrapperCubit() : super(const TabsWrapperInitial());

  void selectTab({required int index}) {
    emit(NewTabIndex(index: index));
  }
}
