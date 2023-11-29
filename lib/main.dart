import 'package:flutter/material.dart';
import 'package:voxiall/Modules/HomeLayout/home_layout.dart';
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
        Splash.routeName:(context) => Splash(),
        LogIn.routename:(context)=>LogIn(),
        SignUp.routeName:(context)=>SignUp(),
        HomeLayout.routeName:(context) =>HomeLayout(),
      },
    );
  }
}
