import 'package:flutter/material.dart';

class Alert_item extends StatelessWidget {
  String img_path;
  String text_1;
  String text_2;
  String time;
  Alert_item({required this.img_path,required this.text_1,required this.text_2,required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 3),
      child: Column(

        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(img_path),
              ),
              SizedBox(width: 7,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text_1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(text_2,
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(height: 4,),
                  Text(
                    time,
                    style: TextStyle(color: Color(0xff727477)),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15,),
        ],

      ),
    );
  }
}
