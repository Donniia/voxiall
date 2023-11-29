import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 200,
      margin: const EdgeInsets.only(left: 10, bottom: 40),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            child: Image.asset(
              "assets/images/Story1.png",
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
                backgroundImage: AssetImage("assets/images/Profile_Photo.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
