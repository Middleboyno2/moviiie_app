import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:moviiie/app/navigation/app_route.dart';

class SplashScreenViewModel{
  void goToMainScreen(BuildContext context){
    context.goNamed(AppRoute.main);
  }
}