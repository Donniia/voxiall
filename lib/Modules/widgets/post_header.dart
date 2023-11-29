import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  String title;
  String imgPath;
  String timer;
  PostHeader({
    super.key,
    required this.title,
    required this.imgPath,
    required this.timer,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(imgPath),
              )),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color(0xffECEBED),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              timer,
              style: TextStyle(
                  color: Color(0xff727477),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        Spacer(),
        Container(
          child: Image.asset("assets/images/Dots_Vertical.png"),
          height: 30,
          width: 30,
        )
      ],
    );
  }
}
