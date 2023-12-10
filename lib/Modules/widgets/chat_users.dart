import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Chat/chat_view.dart';

class Chat_user extends StatelessWidget {
  String mess_user_img;
  String name_user;
  String text_user;

  Chat_user({super.key,required this.mess_user_img,required this.name_user,required this.text_user});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: media.height * 0.02,
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatView(profilePath: mess_user_img, profileName: name_user)));
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: media.width * 0.065,
                child: Image.asset(mess_user_img),
              ),
              SizedBox(
                width: media.width * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name_user,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: media.width * 0.035,
                      )),
                  Text(
                    text_user,
                    style: TextStyle(color: Colors.white, fontSize: media.width * 0.030),
                  ),
                ],
              ),
              const Spacer(),
              const Text("4h ago",style: TextStyle(color: Color(0xff727477),fontSize: 14),)
            ],
          ),
        ),
        SizedBox(
          height: media.height * 0.02,
        ),
        Divider(
          color: const Color(0xff323436),
          thickness: media.width * 0.007,
        ),
      ],
    );
  }
}
