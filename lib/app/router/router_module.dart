import 'package:injectable/injectable.dart';

import 'app_router.dart';

@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter() {
    return AppRouter();
  }
}
