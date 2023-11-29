import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/post.dart';
import 'package:voxiall/Modules/Home/slider_%20post_widget.dart';
import 'package:voxiall/Modules/Home/story_item.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,),
      child: Expanded(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder:(context, index) {
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Text("Good Morning.",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),),
                    Container(
                      padding:const EdgeInsets.all(6),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color:const Color(0xff727477),
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child:const Badge(
                          backgroundColor: Color(0xffF0C11A),
                          child:ImageIcon(AssetImage("assets/images/message_icon.png"),color: Color(0xffEB4E2A),)),
                    ),
                  ],
                ),
               const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StoryItem(),
                      StoryItem(),
                      StoryItem(),
                      StoryItem(),
                      StoryItem(),
                      StoryItem(),
                    ],
                  ),
                ),
               const Divider(
                  color: Color(0xff323436),
                  height: 2,
                  thickness: 2,
                ),
                const Post(),
                SliderPost(username: "thv", profilepath: "assets/images/V_profile.png", time: "1h ago", path1: "assets/images/V_post.png", path2: "assets/images/V_post.png")


              ],
            );
          }

        ),
      ),
    );
  }
}
