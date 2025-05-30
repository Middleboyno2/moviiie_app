import 'package:flutter/material.dart';
import 'package:localization/strings.g.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final PageController controller;
  const CustomBottomNavigationBar({super.key, required this.controller});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      //showSelectedLabels: true,
      //type: BottomNavigationBarType.fixed,
      currentIndex: currentPage,
      onTap: (index){
        widget.controller.jumpToPage(index);
        setState(() {
          currentPage = index;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: context.t.main.tab.home
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: context.t.main.tab.search
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video),
            label: context.t.main.tab.video
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: context.t.main.tab.profile
        ),
      ]
    );
  }
}
