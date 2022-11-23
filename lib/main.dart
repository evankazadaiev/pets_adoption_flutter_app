import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pets_adoption/core/presentation/wrappers/tabs_wrapper/tabs_wrapper.dart';
import 'package:pets_adoption/features/pets/presentation/screens/pet_details_screen.dart';

import 'app/theme/app_theme_provider_widget.dart';
import 'app/theme/cubit/app_theme_cubit.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

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
    return _ThemebleWidget(
      themeBuilder: (themeState) => ThemedApp(
        appTheme: themeState,
      ),
    );
  }
}

class _ThemebleWidget extends StatelessWidget {
  final Widget Function(AppTheme theme) themeBuilder;

  const _ThemebleWidget({
    required this.themeBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeCubit>(
      create: (ctx) => di.get(),
      child: BlocBuilder<AppThemeCubit, AppTheme>(
        builder: (context, themeState) => AppThemeProvider(
          theme: themeState,
          child: themeBuilder(themeState),
        ),
      ),
    );
  }
}

class ThemedApp extends StatelessWidget {
  final AppTheme appTheme;

  const ThemedApp({required this.appTheme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pets adoption',
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: appTheme.colorTheme.accent,
          primaryContainer: appTheme.colorTheme.accentVariant,
          onPrimary: appTheme.colorTheme.onAccent,
          secondary: appTheme.colorTheme.secondaryAccent,
          secondaryContainer: appTheme.colorTheme.secondaryAccentVariant,
          onSecondary: appTheme.colorTheme.onSecondary,
          surface: appTheme.colorTheme.backgroundSurface,
          onSurface: appTheme.colorTheme.onSurface,
          background: appTheme.colorTheme.backgroundWindowBackground,
          onBackground: appTheme.colorTheme.onBackground,
          error: appTheme.colorTheme.strokeError,
          onError: appTheme.colorTheme.onAccent,
          brightness: Brightness.light,
        ),
        brightness: Brightness.light,
        fontFamily: 'Open Sans',
        scaffoldBackgroundColor: appTheme.colorTheme.backgroundWindowBackground,
        textTheme: TextTheme(
          headlineLarge: appTheme.textTheme.h5Bold, // h1
          headlineMedium: appTheme.textTheme.h6Bold, // h2
          headlineSmall: appTheme.textTheme.h6Thin, //h3
          bodyMedium: appTheme.textTheme.body1Regular, // body
          bodyLarge: appTheme.textTheme.buttonMedium, // button
          titleMedium: appTheme.textTheme.caption1Regular, // caption
          labelMedium: appTheme.textTheme.subtitle2Bold, // subtitle
          labelSmall: appTheme.textTheme.subtitle2Regular, //subtitle2
        ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: appTheme.buttonTheme.filledButton,
        // ),
        // outlinedButtonTheme: OutlinedButtonThemeData(
        //   style: appTheme.buttonTheme.outlineButton,
        // ),
        textButtonTheme: TextButtonThemeData(
          style: appTheme.buttonTheme.blankButton,
        ),
        dialogTheme: DialogTheme(
          backgroundColor: appTheme.colorTheme.backgroundSurface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        primaryIconTheme: IconThemeData(
          color: appTheme.colorTheme.iconPrimary,
        ),
        inputDecorationTheme: appTheme.inputTheme.defaultInput,
        iconTheme: IconThemeData(
          color: appTheme.colorTheme.iconPrimary,
        ),
        // dataTableTheme: appTheme.dataTableTheme.defaultTable,
        dividerColor: appTheme.colorTheme.iconSecondary,
        shadowColor: appTheme.colorTheme.onBackground,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: appTheme.colorTheme.backgroundSurface,
          elevation: 8,
          modalBackgroundColor:
              appTheme.colorTheme.backgroundWindowBackground.withOpacity(0.3),
          modalElevation: 16,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: appTheme.colorTheme.backgroundSurface,
          titleTextStyle: appTheme.textTheme.h5Medium,
        ),
      ),
      home: TabsWrapper(),
      routes: {
        PetDetailsScreen.routeName: (_) => const PetDetailsScreen(),
        TabsWrapper.routeName: (_) => TabsWrapper(),
      },
    );
  }
}
