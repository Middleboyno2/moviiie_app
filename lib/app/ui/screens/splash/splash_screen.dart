import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:moviiie/app/ui/screens/splash/splash_screen_view_model.dart';
import 'package:moviiie/library/resource/colors.dart';

import '../../../../library/resource/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.viewModel});
  final SplashScreenViewModel viewModel;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPersistentFrameCallback((_) async{
      await Future.delayed(const Duration(seconds: 2));
      if(mounted){
        widget.viewModel.goToMainScreen(context);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          AppIcons.logoTransparent,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
