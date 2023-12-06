import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/slider_%20post_widget.dart';

import '../Home/home_screen.dart';
import '../widgets/comment_item.dart';

class SliderComments extends StatelessWidget {
  final String username;
  final String profilepath;
  final String path1;
  final String path2;
  const SliderComments(
      {super.key,
        required this.username,
        required this.profilepath,
        required this.path1,
        required this.path2,
      });
  final LinearGradient colored = const LinearGradient(
      colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);


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
        body: Column(
          children: [
           SliderPost(username: username, profilepath: profilepath, path1: path1, path2: path2),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Comments (45)",
                  style: TextStyle(color: Color(0xffECEBED), fontSize: 15),
                ),
                Row(
                  children: [
                    Text("Recent",
                        style:
                        TextStyle(color: Color(0xffECEBED), fontSize: 15)),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xffECEBED),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        CommentItem(
                            imgpath: "assets/images/Jessica_Thompson1.png",
                            username: "Jessica Thompsons",
                            comment: "Nice!!"),
                        CommentItem(
                            imgpath: "assets/images/steve.png",
                            username: "Steve",
                            comment: "Lovely photo"),
                        CommentItem(
                            imgpath: "assets/images/kat.png",
                            username: "Kat Williams",
                            comment: "beautiful"),
                        CommentItem(
                            imgpath: "assets/images/Profile2.png",
                            username: "Jacob Washington",
                            comment: "This is such a powerful qoutes"),
                        CommentItem(
                            imgpath: "assets/images/Profile2.png",
                            username: "Jacob Washington",
                            comment: "This is such a powerful qoutes"),
                        CommentItem(
                            imgpath: "assets/images/Profile2.png",
                            username: "Jacob Washington",
                            comment: "This is such a powerful qoutes"),
                        CommentItem(
                            imgpath: "assets/images/Profile2.png",
                            username: "Jacob Washington",
                            comment: "This is such a powerful qoutes"),
                        CommentItem(
                            imgpath: "assets/images/Profile2.png",
                            username: "Jacob Washington",
                            comment: "This is such a powerful qoutes"),
                        CommentItem(
                            imgpath: "assets/images/Profile2.png",
                            username: "Jacob Washington",
                            comment: "This is such a powerful qoutes"),
                      ],
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: media.width * 0.03,
                  vertical: media.height * 0.015),
              width: media.width,
              height: media.height * 0.09,
              decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(0xff727477), width: 0.8),
                  )),
              child: Container(
                padding:EdgeInsets.symmetric(
                    horizontal: media.width * 0.02,
                    vertical: media.height * 0.015) ,
                width: media.width * 0.7,
                height: media.height * 0.002,
                decoration: BoxDecoration(
                    color: const Color(0xff323436),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          decoration:InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type your comment here",
                            hintStyle: TextStyle(
                              fontSize: media.width * 0.03,
                              color: const Color(0xffECEBED),
                            ),
                          ),
                        )),
                    Icon(Icons.add,color: Color(0xff727477),),
                    Container(
                      padding: EdgeInsets.all(media.width * 0.01),
                      width: media.width * 0.09,
                      height: media.height * 0.04,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
                        ),
                      ),
                      child: const ImageIcon(
                        AssetImage("assets/images/Send_icons.png"),
                        size: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
