import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/strings.g.dart';
import 'package:moviiie/app/navigation/app_router_config.dart';

class MoviiieApp extends StatefulWidget {
  const MoviiieApp({super.key});

  @override
  State<MoviiieApp> createState() => _MoviiieAppState();
}

class _MoviiieAppState extends State<MoviiieApp> {
  final _appRoutesConfig = AppRouterConfig();

  @override
  void dispose() {
    super.dispose();
    _appRoutesConfig.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRoutesConfig.router,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],

    );
  }
}
