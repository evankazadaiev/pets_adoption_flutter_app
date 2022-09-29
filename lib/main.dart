import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pets_adoption/repositories/pets_repository.dart';
import 'package:pets_adoption/screens/home_screen/home_screen_cubit.dart';
import 'package:pets_adoption/screens/pet_screen/pet_screen.dart';
import 'package:pets_adoption/theme/cubit/theme_cubit.dart';
import 'package:pets_adoption/theme/theme.dart';
import 'package:pets_adoption/widgets/app_bottom_bar/app_bottom_bar_cubit.dart';
import 'package:pets_adoption/wrappers/tabs_wrapper/tabs_wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
  );
}
//	#5bd2a2 main color

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AppBottomBarCubit()),
          BlocProvider(create: (_) => ThemeCubit()),
          BlocProvider(create: (_) => HomeScreenCubit(PetsRepository())),
        ],
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, selectedTheme) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Pets adoption',
              themeMode: selectedTheme,
              darkTheme: ThemeData.dark(),
              theme: AppTheme().lightTheme,
              home: const TabsWraper(),
              routes: {
                PetScreen.routeName: (_) => const PetScreen(),
                TabsWraper.routeName: (_) => const TabsWraper(),
              },
            );
          },
        ));
  }
}
