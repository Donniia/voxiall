import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/post.dart';
import 'package:voxiall/Modules/widgets/photo_post.dart';

import '../Home/slider_ post_widget.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const Post(
          username: "Tony Montana",
          profilepath: "assets/images/Profile5.png",
          post: "Writing code is not so bad!",
        ),
        PhotoPost(username: "Cillian murphy", profilepath: "assets/images/ProfilePhoto2.png", path1: "assets/images/caillian1.png"),
        const SliderPost(
          username: "Michelle Ogilvy",
          profilepath: "assets/images/Profile4.png",
          path1: "assets/images/person1.png",
          path2: "assets/images/person1.png",
        ),
       const Post(username: "Donia<3", profilepath: "assets/images/donia.jpg", post: "where's my oscar for acting like everything is fine"),
        const SliderPost(
          username: "daniel radcliffe",
          profilepath: "assets/images/potter1.png",
          path1: "assets/images/potter.png",
          path2: "assets/images/potter2.jpg",
        ),
      ],
    );
  }
}
