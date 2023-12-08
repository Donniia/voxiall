import 'package:flutter/material.dart';
import 'package:voxiall/Modules/CommentScreens/post_comments.dart';
import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';

class Post extends StatelessWidget {
  final String username;
  final String profilepath;
  final String post;

  const Post({super.key,
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
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PostComment(username: username, profilepath: profilepath, post: post)));
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth >= 600 ? 40 : 20,
                vertical: 15,
              ),
              child: Text(
                post,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          PostFooter(),
        ],
      ),
    );
  }
}
