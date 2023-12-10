import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Profiles/profiles.dart';

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
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Profiles(
                          profileImg: imgPath,
                          UserName: title,
                        )));
          },
          child: Container(
            width: media.width * 0.133,
            height: media.width * 0.133,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(media.width * 0.133 / 2),
              image: DecorationImage(
                image: AssetImage(imgPath),
              ),
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
                color: const Color(0xffECEBED),
                fontSize: media.width * 0.038,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "1h ago",
              style: TextStyle(
                color: const Color(0xff727477),
                fontSize: media.width * 0.03,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: media.width * 0.06,
          width: media.width * 0.06,
          child: Image.asset("assets/images/Dots_Vertical.png"),
        ),
      ],
    );
  }
}
