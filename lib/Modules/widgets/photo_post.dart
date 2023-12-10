import 'package:flutter/material.dart';
import 'package:voxiall/Modules/CommentScreens/photo_comments.dart';

import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';

class PhotoPost extends StatelessWidget {
  String username;
  String profilepath;
  String path1;

  PhotoPost(
      {super.key, required this.username, required this.profilepath, required this.path1});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: media.width * 0.06, vertical: media.height * 0.015),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(title: username, imgPath: profilepath),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PhotoComments(username: username, profilepath: profilepath, path1: path1)));
            },
            child: SizedBox(
              height: media.height * 0.24,
              child: ClipRRect(
                child: Image.asset(
                  path1,
                ),
              ),
            ),
          ),
          const PostFooter(),
        ],
      ),
    );
  }
}
