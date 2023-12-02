import 'package:flutter/material.dart';

class Chat_user extends StatelessWidget {
  const Chat_user({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 75,
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/images/Jessica_Thompson1.png"),
              maxRadius: 30,
            ),
          ),
          SizedBox(width: 15,),
          RichText(text:
          TextSpan(
            children: [
              TextSpan(text: "Jessica Thompson \n",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14)),
              TextSpan(text: "Hey you! Are u there? \n"),

            ],
          ),
          ),
        ],
      ),
    );
  }
}
