part of 'tabs_wrapper_cubit.dart';

@immutable
abstract class TabsWrapperState {
  final int index;
  const TabsWrapperState(this.index);
}

class TabsWrapperInitial extends TabsWrapperState {
  const TabsWrapperInitial() : super(0);
}

class NewTabIndex extends TabsWrapperState {
  const NewTabIndex({required int index}) : super(index);
}
