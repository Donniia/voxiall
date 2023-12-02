import 'package:flutter/material.dart';

class Chat_user extends StatelessWidget {
  const Chat_user({Key? key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: media.height * 0.02,
        ),
        Row(
          children: [
            CircleAvatar(
              child: Image.asset("assets/images/Jessica_Thompson1.png"),
              maxRadius: media.width * 0.08,
            ),
            SizedBox(
              width: media.width * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Jessica Thompson",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: media.width * 0.045,
                    )),
                Text(
                  "Hey you! Are u there? ",
                  style: TextStyle(color: Colors.white, fontSize: media.width * 0.035),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: media.height * 0.02,
        ),
        Divider(
          color: Color(0xff323436),
          thickness: media.width * 0.007,
        ),
      ],
    );
  }
}
