import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Chat/chat_view.dart';

class Chat_pinned extends StatelessWidget {
  final String mass_profile;
  final String mass_name;

  const Chat_pinned({super.key, required this.mass_profile, required this.mass_name});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(right: media.width * 0.07),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatView(profilePath: mass_profile, profileName:mass_name,)));
            },
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(mass_profile),
              maxRadius: media.width * 0.07,
            ),
          ),
          SizedBox(
            height: media.height * 0.013,
          ),
          Text(
            mass_name,
            style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.w500,
              fontSize: media.width * 0.03,
            ),
          )
        ],
      ),
    );
  }
}
