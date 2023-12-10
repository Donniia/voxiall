import 'dart:async';

import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Registeration/log_in.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder:(context)=>const LogIn()));
    });

    return Scaffold(
      body: Image.asset(
        "assets/images/Splash_screen.png",
        width: media.width,
        height: media.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
