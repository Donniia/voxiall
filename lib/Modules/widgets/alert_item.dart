import 'package:flutter/material.dart';

class Alert_item extends StatelessWidget {
  final String img_path;
  final String text_1;
  final String text_2;
  final String time;

  Alert_item({
    required this.img_path,
    required this.text_1,
    required this.text_2,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 3),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: screenWidth * 0.1, // Adjust the width as needed
                height: screenWidth * 0.15, // Adjust the height as needed
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundImage: AssetImage(img_path),
                ),
              ),
              SizedBox(width: screenWidth * 0.02), // Adjust the spacing as needed
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: text_1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04, // Adjust the font size as needed
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: text_2,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.035, // Adjust the font size as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.01), // Adjust the spacing as needed
                  Text(
                    time,
                    style: TextStyle(color: Color(0xff727477)),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: screenWidth * 0.03), // Adjust the spacing as needed
        ],
      ),
    );
  }
}
