import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class YourStoryView extends StatelessWidget {
  static final StoryController controller = StoryController();
  String storyprofile;
  String story;
  YourStoryView({required this.story,required this.storyprofile});

  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItems = [
      StoryItem.pageProviderImage(
          AssetImage(story),
        imageFit: BoxFit.cover,
    duration: Duration(seconds: 3),
      ),
      StoryItem.text(
        title: 'Hello, this is Voxial',
        backgroundColor: Colors.white
      ),
    ];
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          StoryView(
              storyItems: storyItems,
              controller: controller,
              inline: false,
              repeat: false,
              onVerticalSwipeComplete: (direction) {
                if (direction == Direction.down) Navigator.pop(context);
              }),
          Positioned(
            top: 60.0,
            left: 20.0,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [Color(0xffEB4E2A), Color(0xffF0C11A)]),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Color(0xff323436), width: 4)),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage(storyprofile),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      "adham",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      "1m ago",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: 450,
            height: 88,
            color: Colors.black.withOpacity(0.3),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff323436),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type your reply here..",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xffECEBED))),
                      ),
                    ),
                   Container(
                     padding: EdgeInsets.all(5),
                     width: 40,
                     height: 60,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.topRight,
                           colors: [Color(0xffEB4E2A),
                             Color(0xffF0C11A)
                           ]

                       ),
                     ),
                     child: ImageIcon(AssetImage("assets/images/Send_icons.png"),color: Colors.white,),
                   )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
