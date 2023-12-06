import 'package:flutter/material.dart';
import 'package:voxiall/Modules/CommentScreens/slider_comments.dart';
import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';

class SliderPost extends StatelessWidget {
  final String username;
  final String profilepath;
  final String path1;
  final String path2;

  const SliderPost({super.key,
    required this.username,
    required this.profilepath,
    required this.path1,
    required this.path2,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerHeight = screenWidth >= 600 ? 320 : 220;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(
            title: username,
            imgPath: profilepath,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SliderComments(username: username, profilepath: profilepath, path1: path1, path2: path2)));
            },
            child: SizedBox(
              height: containerHeight,
              child: PageView(
                children: [
                  Image(image: AssetImage(path1)),
                  Image(image: AssetImage(path2)),
                ],
              ),
            ),
          ),
          PostFooter(),
        ],
      ),
    );
  }
}
