import 'package:flutter/material.dart';

class PostFooter extends StatefulWidget {
  @override
  State<PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  bool isTabed=false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
               setState(() {
                 isTabed=true;
               });
              },
              child: ImageIcon(
                AssetImage("assets/images/Like_icon.png"),
                color: isTabed ? Color(0xffEB4E2A) :Colors.white,
              ),
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
        const SizedBox(width: 15,),
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
        const SizedBox(width: 15,),
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
        Spacer(),
        Container(
          child: Image.asset("assets/images/save_icon.png"),
          height: 25,
          width: 25,
        )
      ],
    );
  }
}
