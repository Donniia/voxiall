import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  String title;
  String imgPath;
  PostHeader({
    super.key,
    required this.title,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          width: media.width * 0.133,
          height: media.width * 0.133,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(media.width * 0.133 / 2),
            image: DecorationImage(
              image: AssetImage(imgPath),
            ),
          ),
        ),
        SizedBox(
          width: media.width * 0.0213,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xffECEBED),
                fontSize: media.width * 0.048,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "1h ago",
              style: TextStyle(
                color: Color(0xff727477),
                fontSize: media.width * 0.040,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          child: Image.asset("assets/images/Dots_Vertical.png"),
          height: media.width * 0.08,
          width: media.width * 0.08,
        ),
      ],
    );
  }
}
