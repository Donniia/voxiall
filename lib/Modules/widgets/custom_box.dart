import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  String imgPath;
  String title;
  CustomBox({super.key, required this.title, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 15),
      width: 141,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(image: AssetImage(imgPath))),
          ),
         const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: const TextStyle(color: Color(0xff727477), fontSize: 17),
          )
        ],
      ),
    );
  }
}
