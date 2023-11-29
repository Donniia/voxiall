import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageIcon(
              AssetImage("assets/images/Like_icon.png"),
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "2,245",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        Row(
          children: [
            ImageIcon(
              AssetImage("assets/images/Comment_icon.png"),
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "2,245",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        Row(
          children: [
            ImageIcon(
              AssetImage("assets/images/share_icon.png"),
              color: Colors.white,
              size: 18,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "2,245",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        ShaderMask(
          shaderCallback: (rect) => LinearGradient(colors: [
            Color(0xffEB4E2A),
            Color(0xffF0C11A),
          ], begin: Alignment.topCenter)
              .createShader(rect),
          child: Icon(Icons.bookmark_border),
        ),
      ],
    );
  }
}
