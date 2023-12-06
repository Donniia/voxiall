import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/post.dart';
import 'package:voxiall/Modules/widgets/photo_post.dart';

class MyProfilePosts extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Post(username: "Ichigo Kurosaki", profilepath: "assets/images/myProfile.png", post: "Going on vacation! Catch you all in 10 days. No call!!!!!"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath:"assets/images/myProfile.png", path1: "assets/images/bleach.png"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath:"assets/images/myProfile.png", path1: "assets/images/bleach.png"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath:"assets/images/myProfile.png", path1: "assets/images/bleach.png"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath:"assets/images/myProfile.png", path1: "assets/images/bleach.png"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath:"assets/images/myProfile.png", path1: "assets/images/bleach.png"),

        ],
      ),
    );
  }
}
