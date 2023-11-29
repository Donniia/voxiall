
import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';

class SliderPost extends StatelessWidget {
  const SliderPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(title: "thv", imgPath: "assets/images/V_profile.png", timer: "1h ago"),
          Container(
            height: 250,
            child: PageView(
              children: [
                Image(image: AssetImage("assets/images/V_post.png")),
                Image(image: AssetImage("assets/images/V_post.png")),
              ],
            ),
          ),
          PostFooter(),
        ],
      ),
    );
  }
}
