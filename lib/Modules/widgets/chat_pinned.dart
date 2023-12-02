import 'package:flutter/material.dart';

class Chat_pinned extends StatelessWidget {
  String mass_profile;
  String mass_name;
  Chat_pinned({super.key, required this.mass_profile, required this.mass_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 28),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(mass_profile),
            maxRadius: 35,

          ),
          SizedBox(
            height: 10,
          ),
          Text(
            mass_name,
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w800,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}
