import 'package:flutter/material.dart';
import 'package:moviiie/app/ui/screens/home/home_screen.dart';
import 'package:moviiie/app/ui/screens/home/home_screen_view_model.dart';
import 'package:moviiie/app/ui/screens/main/main_screen_view_model.dart';
import 'package:moviiie/app/ui/screens/profile/profile_screen.dart';
import 'package:moviiie/app/ui/screens/search/search_screen.dart';
import 'package:moviiie/app/ui/screens/video/video_screen.dart';
import 'package:moviiie/app/ui/widget/bottom_navigation_bar/custom_bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.viewModel});
  final MainScreenViewModel viewModel;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomeScreen(viewModel: HomeScreenViewModel(),),
          SearchScreen(),
          VideoScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(controller: _pageController,)
    );
  }
}
