import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/post.dart';
import 'package:voxiall/Modules/widgets/photo_post.dart';

class ProfilesPosts extends StatelessWidget {
  String UserName;
  String profileImg;
   ProfilesPosts({super.key,required this.UserName, required this.profileImg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post(username:UserName , profilepath: profileImg, post: "Writing code is not so bad!"),
        PhotoPost(username: UserName, profilepath: profileImg, path1: "assets/images/post1.png"),
        PhotoPost(username: UserName, profilepath: profileImg, path1: "assets/images/post1.png"),
        PhotoPost(username: UserName, profilepath: profileImg, path1: "assets/images/post1.png"),
        PhotoPost(username: UserName, profilepath: profileImg, path1: "assets/images/post1.png"),
        PhotoPost(username: UserName, profilepath: profileImg, path1: "assets/images/post1.png"),
        PhotoPost(username: UserName, profilepath: profileImg, path1: "assets/images/post1.png"),

      ],
    );
  }
}
