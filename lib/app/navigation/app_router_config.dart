import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moviiie/app/navigation/app_route.dart';
import 'package:moviiie/app/ui/screens/main/main_screen.dart';
import 'package:moviiie/app/ui/screens/main/main_screen_view_model.dart';
import 'package:moviiie/app/ui/screens/splash/splash_screen.dart';
import 'package:moviiie/app/ui/screens/splash/splash_screen_view_model.dart';
import 'package:moviiie/core/di/inject.dart';

import '../../domain/bloc/home/home_bloc.dart';

class AppRouterConfig {
  late final GoRouter router = GoRouter(
    routes: _routes,
    initialLocation: AppRoute.root
  );
  void dispose(){}

  late final _routes = <RouteBase>[
    // splash screen
    GoRoute(
      path: '/',
      name: AppRoute.root,
      builder: (context, state){
        return SplashScreen(
          viewModel: SplashScreenViewModel(),
        );
      }
    ),
    //
    GoRoute(
        path: '/main',
        name: AppRoute.main,
        builder: (context, state){
          return MultiBlocProvider(
            providers: [
              BlocProvider<HomeBloc>(
                create: (context) => HomeBloc(inject()),
                //create: (context) => LoginBloc()..add(LoginStartedEvent())
              ),
            ],
            child: MainScreen(viewModel: MainScreenViewModel())
          );
        }
    ),
  ];
}