import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/home_screen.dart';

class Comment_Page extends StatelessWidget {
  final String username;
  final String profilepath;
  final String? post_text;
  final String? path1;
  final String? path2;
  final String? path1_Photo;
  final LinearGradient colored = const LinearGradient(
      colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  const Comment_Page(
      {super.key,
      required this.username,
      required this.profilepath,
      this.post_text,
      this.path1,
      this.path2,
      this.path1_Photo});
  static const String routename = "CommentPage";

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: media.height * 0.01, horizontal: media.width * 0.01),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routName);
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: media.width * 0.02, top: media.height * 0.01),
              alignment: Alignment.center,
              width: media.width * 0.1,
              height: media.width * 0.1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff181A1C),
                border: Border.all(color: const Color(0xff323436), width: 0.8),
              ),
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Color(0xffEB4E2A),
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: ShaderMask(
            shaderCallback: (Rect rect) {
              return colored.createShader(rect);
            },
            child: Text(
              "POST",
              style: TextStyle(
                fontSize: media.width * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
