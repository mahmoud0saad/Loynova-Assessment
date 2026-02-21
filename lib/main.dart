import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loynova_app/core/theme/agri_ui_init.dart';
import 'package:loynova_app/generated/l10n.dart';

import 'core/di/injection.dart';
import 'core/router/router.dart';
import 'core/theme/app_themes.dart';
import 'features/_shared/app_configurations/presentation/bloc/app_configuration_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  runApp(const MyApp());
}

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return AgriUiInitializer(
      designSize: const Size(360, 694),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (ctx) =>
                getIt.get<AppConfigurationBloc>()
                  ..add(const AppConfigurationEvent.started()),
          ),
        ],
        child: BlocBuilder<AppConfigurationBloc, AppConfigurationState>(
          builder: (context, state) {
            return BlocSelector<
              AppConfigurationBloc,
              AppConfigurationState,
              Locale
            >(
              selector: (state) {
                return state.locale;
              },
              builder: (context, localeState) {
                return MaterialApp.router(
                  title: 'Loynova App',
                  supportedLocales: S.delegate.supportedLocales,
                  locale: localeState,
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  debugShowCheckedModeBanner: false,
                  theme: AppThemes.lightTheme,
                  routerConfig: getIt.get<AppRouter>().config,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
