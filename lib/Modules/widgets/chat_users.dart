import 'package:flutter/material.dart';

class Chat_user extends StatelessWidget {
  const Chat_user({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:15 ,),
        Row(
          children: [
            CircleAvatar(
             child: Image.asset("assets/images/Jessica_Thompson1.png"),
              maxRadius: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Jessica Thompson",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                Text("Hey you! Are u there? ",style: TextStyle(color: Colors.white,fontSize: 13),),
              ],
            ),
          ],
        ),
       const SizedBox(
         height: 15,
       ),
        const Divider(
          color: Color(0xff323436),
          thickness: 1.3,
        ),
      ],
    );
  }
}
