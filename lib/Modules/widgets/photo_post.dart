import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';

class PhotoPost extends StatelessWidget {
  String username;
  String profilepath;
  String path1;

  PhotoPost({required this.username, required this.profilepath, required this.path1});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: media.width * 0.075, vertical: media.height * 0.015),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(title: username, imgPath: profilepath),
          Container(
            height: media.height * 0.35,
            child: ClipRRect(
              child: Image.asset(path1,),
            ),
          ),
          PostFooter(),
        ],
      ),
    );
  }
}
