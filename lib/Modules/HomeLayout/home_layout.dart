import 'package:flutter/material.dart';
import 'package:voxiall/Modules/AlertScreen/alerts_screen.dart';
import 'package:voxiall/Modules/Home/home_screen.dart';
import 'package:voxiall/Modules/MyProfile/my_profile.dart';
import 'package:voxiall/Modules/Post/create_post.dart';
import 'package:voxiall/Modules/Search/search_screen.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key? key});
  static const String routeName = "home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    Search_Screen(),
    Create_post(),
    AlertsScreen(),
    Myprofile(),
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        height: media.height * 0.1 + 20,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xff727477), width: 1),
          ),
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/home_icon.png"),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/search_icon.png"),
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(media.width < 600 ? 8 : 13),
                height: media.width < 600 ? 40 : 60,
                width: media.width < 600 ? 40 : 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xffEB4E2A),
                      Color(0xffF0C11A),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  "assets/images/plus_icon.png",
                  fit: BoxFit.cover,
                ),
              ),
              label: "plus",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/alert_icon.png"),
              ),
              label: "Alert",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/profile_icon.png"),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
    );
  }
}
