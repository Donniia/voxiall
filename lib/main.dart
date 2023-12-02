import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/home_screen.dart';
import 'package:voxiall/Modules/HomeLayout/home_layout.dart';
import 'package:voxiall/Modules/Messages/message_screen.dart';
import 'package:voxiall/Modules/Registeration/Sign_Up.dart';
import 'package:voxiall/Modules/Registeration/log_in.dart';
import 'package:voxiall/Modules/Splash.dart';


import 'package:voxiall/core/app_theme.dart';



void main() {
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routeName,
      theme: AppTheme.dark,
      routes: {
        HomeScreen.routName:(context) => HomeScreen(),
        Splash.routeName:(context) => Splash(),
        LogIn.routename:(context)=>LogIn(),
        SignUp.routeName:(context)=>SignUp(),
        HomeLayout.routeName:(context) =>HomeLayout(),
        Message_screen.routeName:(context) =>Message_screen(),
      },
    );
  }
}

