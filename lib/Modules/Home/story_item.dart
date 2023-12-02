import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/story_viewer.dart';


class StoryItem extends StatelessWidget {
 String storyprofile;
 String story;
 StoryItem({required this.storyprofile,required this.story});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>YourStoryView()));},
      child: Container(
        width: 130,
        height: 180,
        margin: const EdgeInsets.only(left: 10, bottom: 40,top: 15),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                story,
                fit: BoxFit.cover,
              ),
            ),
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
                  backgroundImage: AssetImage(storyprofile),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


