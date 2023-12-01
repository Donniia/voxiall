import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';



class PhotoPost extends StatelessWidget {
  String username;
  String profilepath;
  String path1;


  PhotoPost({required this.username,required this.profilepath,required this.path1,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(title: username, imgPath: profilepath,),
          Container(
            height: 250,
            child: ClipRRect(
              child: Image.asset(path1),
            )
          ),
          PostFooter(),

        ],
      ),
    );
  }
}