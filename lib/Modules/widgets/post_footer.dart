import 'package:flutter/material.dart';


class PostFooter extends StatefulWidget {
  const PostFooter({super.key});

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
                    const AssetImage("assets/images/Like_icon.png"),size: 22,
                    color: isTabed ? const Color(0xffEB4E2A) : Colors.white,
                  ),
                ),
                SizedBox(
                  width: media.width * 0.005,
                ),
                Text(
                  likes.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: media.width * 0.030,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(width: 15),
            Row(
              children: [
                const ImageIcon(
                  AssetImage("assets/images/Comment_icon.png"),
                  size: 22,
                  color: Colors.white,
                ),
                SizedBox(
                  width: media.width * 0.005,
                ),
                Text(
                  "2,245",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: media.width * 0.030,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(width: 15),
            Row(
              children: [
                const ImageIcon(
                   AssetImage("assets/images/share_icon.png"),
                  color: Colors.white,
                  size: 16,
                ),
                SizedBox(
                  width: media.width * 0.008,
                ),
                Text(
                  "2,245",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: media.width * 0.030,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              height: media.width * 0.050,
              width: media.width * 0.050,
              child: Image.asset("assets/images/save_icon.png"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(thickness: 2, color: Color(0xff323436)),
      ],
    );
  }
}
