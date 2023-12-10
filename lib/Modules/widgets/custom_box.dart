import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  String imgPath;
  String title;

  CustomBox({super.key, required this.title, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: media.height * 0.015),
      width: media.width * 0.40,
      height: media.height * 0.025,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: media.width * 0.12,
            height: media.width * 0.12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(image: AssetImage(imgPath)),
            ),
          ),
          SizedBox(
            width: media.width * 0.03,
          ),
          Text(
            title,
            style: TextStyle(color: const Color(0xff727477), fontSize: media.width * 0.040),
          )
        ],
      ),
    );
  }
}
