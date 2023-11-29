

import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/home_screen.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});
  static const String routeName = "home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> Screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedIndex],
      bottomNavigationBar: Container(
        height: 95,
        decoration:const BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xff727477),width: 0.3)
          )
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
          currentIndex: selectedIndex,
          onTap: (value){
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
             BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/home_icon.png"),),label: "Home"),
             BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/search_icon.png")),label: "Search"),
            BottomNavigationBarItem(icon:
            Container(
              padding: EdgeInsets.all(13),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xffEB4E2A),
                        Color(0xffF0C11A)
                      ]

                  ),
                // color: Color(0xffEB4E2A),
                borderRadius: BorderRadius.circular(50)
              ),
              child:Image.asset("assets/images/plus_icon.png",fit: BoxFit.cover,)
            ),label: "plus"
            ),
             BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/alert_icon.png")),label: "Alert"),
             BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/profile_icon.png")),label: "Alert"),
          ],
        ),
      ),
    );
  }
}
