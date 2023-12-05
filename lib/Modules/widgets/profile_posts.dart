import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/post.dart';
import 'package:voxiall/Modules/widgets/photo_post.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
        itemBuilder: (context,index){
      return  Column(
        children: [
          Post(username: "Ichigo Kurosaki", profilepath: "assets/images/myProfile.png", post: "Going on vacation! Catch you all in 10 days. No call!!!!!"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath: "assets/images/myProfile.png", path1: "assets/images/bleach.png"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath: "assets/images/myProfile.png", path1: "assets/images/bleach.png"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath: "assets/images/myProfile.png", path1: "assets/images/bleach.png"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath: "assets/images/myProfile.png", path1: "assets/images/bleach.png"),
          PhotoPost(username:"Ichigo Kurosaki" , profilepath: "assets/images/myProfile.png", path1: "assets/images/bleach.png"),
        ],
      );
    });
  }
}
