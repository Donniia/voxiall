import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/home_screen.dart';
import 'package:voxiall/Modules/widgets/chat_pinned.dart';
import 'package:voxiall/Modules/widgets/chat_users.dart';

class MessageScreen extends StatelessWidget {
  final LinearGradient colored = const LinearGradient(
      colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  static const String routeName = "Message_screen";
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: media.height * 0.03, horizontal: media.width * 0.05),
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
              "MESSAGE",
              style: TextStyle(
                fontSize: media.width * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: media.height * 0.02, bottom: media.height * 0.02),
                  padding: EdgeInsets.only(
                      left: media.width * 0.03, right: media.width * 0.04),
                  decoration: BoxDecoration(
                    color: const Color(0xff323436),
                    borderRadius: BorderRadius.circular(media.height * 0.05),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Who do you want to chat with?",
                            hintStyle: TextStyle(
                                fontSize: media.width * 0.035,
                                color: const Color(0xffECEBED)),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.search,
                        color: Color(0xff727477),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: const Color(0xff323436),
                  thickness: media.height * 0.002,
                ),
                SizedBox(
                  height: media.height * 0.01,
                ),
                Text(
                  "Pinned",
                  style: TextStyle(
                    color: const Color(0xff727477),
                    fontSize: media.width * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: media.height * 0.01,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Chat_pinned(
                        mass_profile: "assets/images/Profile_Photo.png",
                        mass_name: 'Kim',
                      ),
                      Chat_pinned(
                        mass_profile: "assets/images/steve.png",
                        mass_name: 'Steve',
                      ),
                      Chat_pinned(
                        mass_profile: "assets/images/mai.png",
                        mass_name: 'Mai',
                      ),
                      Chat_pinned(
                        mass_profile: "assets/images/Cr7.png",
                        mass_name: "Cristiano",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: media.height * 0.015,
                ),
                Divider(
                  color: const Color(0xff323436),
                  thickness: media.height * 0.002,
                ),
                Chat_user(
                    mess_user_img: "assets/images/Jessica_Thompson1.png",
                    name_user: "Jessica Thompson",
                    text_user: "Hey you! Are u there?"),
                Chat_user(
                    mess_user_img: "assets/images/kat.png",
                    name_user: "Kat Williams",
                    text_user: "OMG! OMG! OMG!"),
                Chat_user(
                    mess_user_img: "assets/images/jacob.png",
                    name_user: "Jacob Washington",
                    text_user: "Sure. Sunday works for me!"),
                Chat_user(
                    mess_user_img: "assets/images/leslie.png",
                    name_user: "Leslie Alexander",
                    text_user: "Sent you an invite for next monday."),
                Chat_user(
                    mess_user_img: "assets/images/tony.png",
                    name_user: "Tony Monta",
                    text_user: "How’s Alicia doing?"),
                Chat_user(
                    mess_user_img: "assets/images/tony.png",
                    name_user: "Tony Monta",
                    text_user: "How’s Alicia doing?"),
                Chat_user(
                    mess_user_img: "assets/images/tony.png",
                    name_user: "Tony Monta",
                    text_user: "How’s Alicia doing?"),
                Chat_user(
                    mess_user_img: "assets/images/tony.png",
                    name_user: "Tony Monta",
                    text_user: "How’s Alicia doing?"),
              ],
            );
          },
        ),
      ),
    );
  }
}
