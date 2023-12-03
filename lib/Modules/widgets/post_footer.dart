import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Comment_Page/comment_page.dart';

class PostFooter extends StatefulWidget {
  @override
  State<PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  bool isTabed = false;
  int likes = 245;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if(isTabed){
                        likes--;
                        isTabed = false;
                      }else {
                        likes++;
                        isTabed = true;
                      }
                    });
                  },
                  child: ImageIcon(
                    const AssetImage("assets/images/Like_icon.png"),
                    color: isTabed ? const Color(0xffEB4E2A) : Colors.white,
                  ),
                ),
                SizedBox(
                  width: media.width * 0.012,
                ),
                Text(
                  likes.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: media.width * 0.037,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, Comment_Page.routename);
              },
              child: Row(
                children: [
                  const ImageIcon(
                    AssetImage("assets/images/Comment_icon.png"),
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: media.width * 0.012,
                  ),
                  Text(
                    "2,245",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: media.width * 0.037,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 15),
            Row(
              children: [
                ImageIcon(
                  const AssetImage("assets/images/share_icon.png"),
                  color: Colors.white,
                  size: media.width * 0.046,
                ),
                SizedBox(
                  width: media.width * 0.014,
                ),
                Text(
                  "2,245",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: media.width * 0.037,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              child: Image.asset("assets/images/save_icon.png"),
              height: media.width * 0.058,
              width: media.width * 0.058,
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(thickness: 2, color: Color(0xff323436)),
      ],
    );
  }
}
