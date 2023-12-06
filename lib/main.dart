import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/home_screen.dart';
import 'package:voxiall/Modules/HomeLayout/home_layout.dart';
import 'package:voxiall/Modules/Messages/message_screen.dart';
import 'package:voxiall/Modules/Registeration/Sign_Up.dart';
import 'package:voxiall/Modules/Registeration/log_in.dart';
import 'package:voxiall/Modules/Splash.dart';
import 'package:voxiall/core/app_theme.dart';



void main() {
  runApp(const MyApplication());
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
        HomeScreen.routName:(context) => const HomeScreen(),
        Splash.routeName:(context) => const Splash(),
        LogIn.routename:(context)=>const LogIn(),
        SignUp.routeName:(context)=>const SignUp(),
        HomeLayout.routeName:(context) =>const HomeLayout(),
        MessageScreen.routeName:(context) =>const MessageScreen(),
      },
    );
  }
}

