import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class YourStoryView extends StatelessWidget {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItems = [
      StoryItem.text(
        title: 'Hello, this is a text story.',
        backgroundColor: Colors.blue,
      ),
      StoryItem.pageProviderImage(
          AssetImage("assets/images/Story5.jpg"),
        imageFit: BoxFit.cover,
    duration: Duration(seconds: 3),
      ),
      StoryItem.pageImage(
          imageFit: BoxFit.cover,
          url:
              'https://previews.123rf.com/images/rglinsky/rglinsky1201/rglinsky120100188/12336990-vertical-image-orient%C3%A9e-de-la-c%C3%A9l%C3%A8bre-tour-eiffel-%C3%A0-paris-france.jpg',
          duration: Duration(seconds: 3),
          controller: controller),


      // Add more story items as needed
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
                          AssetImage("assets/images/storyprofile2.png"),
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
