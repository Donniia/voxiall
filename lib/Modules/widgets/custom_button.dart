import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;

  CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: media.width * 0.09, vertical: media.height * 0.04),
      child: Container(
        alignment: Alignment.center,
        height: media.height * 0.06,
        decoration: const BoxDecoration(color: Color(0xffEB4E2A)),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: media.width * 0.056,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
