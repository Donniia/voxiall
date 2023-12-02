import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/home_screen.dart';
import 'package:voxiall/Modules/widgets/chat_pinned.dart';
import 'package:voxiall/Modules/widgets/chat_users.dart';

class Message_screen extends StatelessWidget {
  LinearGradient colored = LinearGradient(
      colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  static const String routename = "Message_screen";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routName);
            },
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 7),
              alignment: Alignment.center,
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff181A1C),
                border: Border.all(color: Color(0xff323436), width: 0.8),
              ),
              child: Icon(
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
                fontSize: 20,
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
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  padding: EdgeInsets.only(left: 15, right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xff323436),
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Who do you want to chat with?",
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Color(0xffECEBED))),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xff727477),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xff323436),
                  thickness: 1.3,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Pinned",
                  style: TextStyle(
                      color: Color(0xff727477),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
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
                  height: 15,
                ),
                Divider(
                  color: Color(0xff323436),
                  thickness: 1.3,
                ),
                Chat_user(),
              ],

            );
          },
        ),
      ),
    );
  }
}
