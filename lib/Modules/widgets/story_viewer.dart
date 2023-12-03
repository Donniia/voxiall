import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class YourStoryView extends StatelessWidget {
  static final StoryController controller = StoryController();
  String storyprofile;
  String story;
  String user_name;
  String time;
  YourStoryView({
    required this.story,
    required this.storyprofile,
    required this.user_name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    List<StoryItem> storyItems = [
      StoryItem.pageProviderImage(
        AssetImage(story),
        imageFit: BoxFit.cover,
        duration: Duration(seconds: 3),
      ),
      StoryItem.text(
        title: 'Hello, this is Voxial',
        backgroundColor: Colors.orangeAccent,
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
            },
            // onComplete: () {
            //   controller.pause();
            //   //controller.;
            //   controller.play();
            //   Navigator.pop(context);
            // },
            // onStoryShow: (s){
            //   if (s==0){
            //     controller.pause();
            //     //controller.reset();
            //     //controller.play(storyItems: );
            //   }
            // },
          ),
          Positioned(
            top: media.height * 0.06,
            left: media.width * 0.04,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
                    ),
                    borderRadius: BorderRadius.circular(media.width * 0.133 / 2),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(media.width * 0.133 / 2),
                      border: Border.all(
                        color: Color(0xff323436),
                        width: media.width * 0.016,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(storyprofile),
                    ),
                  ),
                ),
                SizedBox(
                  width: media.width * 0.0085,
                ),
                Column(
                  children: [
                    Text(
                      user_name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: media.width * 0.048,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: media.width * 0.034,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: media.height * 0.0267,
              horizontal: media.width * 0.0427,
            ),
            width: media.width * 0.94,
            height: media.height * 0.1296,
            color: Colors.black.withOpacity(0.3),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: media.height * 0.015,
                horizontal: media.width * 0.028,
              ),
              width: media.width * 0.33,
              height: media.height * 0.072,
              decoration: BoxDecoration(
                color: Color(0xff323436),
                borderRadius: BorderRadius.circular(media.height * 0.036),
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
                          fontSize: media.width * 0.02,
                          color: Color(0xffECEBED),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(media.width * 0.017),
                    width: media.width * 0.0533,
                    height: media.height * 0.04,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
                      ),
                    ),
                    child: ImageIcon(
                      AssetImage("assets/images/Send_icons.png"),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
