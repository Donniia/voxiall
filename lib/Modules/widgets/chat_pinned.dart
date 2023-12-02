import 'package:flutter/material.dart';

class Chat_pinned extends StatelessWidget {
  final String mass_profile;
  final String mass_name;

  Chat_pinned({required this.mass_profile, required this.mass_name});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(right: media.width * 0.07),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(mass_profile),
            maxRadius: media.width * 0.09,
          ),
          SizedBox(
            height: media.height * 0.013,
          ),
          Text(
            mass_name,
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w800,
              fontSize: media.width * 0.04,
            ),
          )
        ],
      ),
    );
  }
}
