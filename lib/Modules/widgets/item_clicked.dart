import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/post.dart';

class ItemTabed extends StatelessWidget {
  const ItemTabed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post(username: "Ichigo Kurosaki", profilepath: "assets/images/myProfile.png", post: "dddddd"),
      ],
    );
  }
}
