import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
   CustomButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Container(
        alignment: Alignment.center,
        height: 45,
        decoration: BoxDecoration(color: Color(0xffEB4E2A)),
        child: Text(title,
          style:const TextStyle(
              color: Colors.white,
              fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

}



