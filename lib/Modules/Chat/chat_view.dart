import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Messages/message_screen.dart';
import 'package:voxiall/Modules/Profiles/profiles.dart';
import 'package:voxiall/Modules/widgets/message_item.dart';

class ChatView extends StatelessWidget {
  String profilePath;
  String profileName;
  ChatView({super.key, required this.profilePath,required this.profileName});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(

        horizontal: media.width * 0.01,
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          toolbarHeight: media.height * 0.08,
          title: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profiles(profileImg: profilePath, UserName: profileName)));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    profilePath,
                  ),
                  maxRadius: media.width * 0.06,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                profileName,
                style: const TextStyle(fontSize: 14, color: Colors.white),
              )
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, MessageScreen.routeName);
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: media.width * 0.02, bottom: media.height * 0.018),
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
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(
                vertical: media.height * 0.01, horizontal: media.width * 0.01),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const Divider(
                              color: Color(0xff323436),
                              thickness: 1.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 45,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      profilePath,
                                    ),
                                    maxRadius: media.width * 0.05,
                                  ),
                                ),
                                Message(
                                  border: true,
                                  message: "Hey!",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Message(
                                  border: false,
                                  message: "Hello!",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 45,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      profilePath,
                                    ),
                                    maxRadius: media.width * 0.05,
                                  ),
                                ),
                                Message(
                                  border: true,
                                  message: "Hey!",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Message(
                                  border: false,
                                  message: "Hello!",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 45,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      profilePath,
                                    ),
                                    maxRadius: media.width * 0.05,
                                  ),
                                ),
                                Message(
                                  border: true,
                                  message: "Hey!",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Message(
                                  border: false,
                                  message: "Hello!",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 45,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      profilePath,
                                    ),
                                    maxRadius: media.width * 0.05,
                                  ),
                                ),
                                Message(
                                  border: true,
                                  message: "Hey!",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Message(
                                  border: false,
                                  message: "Hello!",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 45,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      profilePath,
                                    ),
                                    maxRadius: media.width * 0.05,
                                  ),
                                ),
                                Message(
                                  border: true,
                                  message: "Hey!",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Message(
                                  border: false,
                                  message: "Hello!",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 45,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                    profilePath,
                                    ),
                                    maxRadius: media.width * 0.05,
                                  ),
                                ),
                                Message(
                                  border: true,
                                  message: "Hey!",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Message(
                                  border: false,
                                  message: "Hello!",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 45,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      profilePath,
                                    ),
                                    maxRadius: media.width * 0.05,
                                  ),
                                ),
                                Message(
                                  border: true,
                                  message: "Hey!",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Message(
                                  border: false,
                                  message: "Hello!",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 75,
                                  width: 45,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      profilePath,
                                    ),
                                    maxRadius: media.width * 0.05,
                                  ),
                                ),
                                Message(
                                  border: true,
                                  message: "Hey!",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Message(
                                  border: false,
                                  message: "Hello!",
                                ),
                              ],
                            ),

                          ],
                        );
                      }),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: media.width * 0.03,
                      vertical: media.height * 0.015),
                  width: media.width,
                  height: media.height * 0.09,
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(color: Color(0xff727477), width: 0.8),
                  )),
                  child: Container(
                    padding:EdgeInsets.symmetric(
                        horizontal: media.width * 0.02,
                        vertical: media.height * 0.015) ,
                    width: media.width * 0.7,
                    height: media.height * 0.002,
                    decoration: BoxDecoration(
                        color: const Color(0xff323436),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(
                              style: const TextStyle(color: Colors.white),
                          decoration:InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type your message here",
                            hintStyle: TextStyle(
                              fontSize: media.width * 0.03,
                              color: const Color(0xffECEBED),
                            ),
                          ),
                        )),
                        const Icon(Icons.add,color: Color(0xff727477),),
                        Container(
                          padding: EdgeInsets.all(media.width * 0.01),
                          width: media.width * 0.09,
                          height: media.height * 0.04,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
                            ),
                          ),
                          child: const ImageIcon(
                            AssetImage("assets/images/Send_icons.png"),
                            size: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
