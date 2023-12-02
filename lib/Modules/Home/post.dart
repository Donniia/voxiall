import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';

class Post extends StatelessWidget {
  final String username;
  final String profilepath;
  final String post;

  Post({
    required this.username,
    required this.profilepath,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PostHeader(
            title: username,
            imgPath: profilepath,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth >= 600 ? 40 : 20,
              vertical: 25,
            ),
            child: Text(
              post,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          PostFooter(),
        ],
      ),
    );
  }
}
