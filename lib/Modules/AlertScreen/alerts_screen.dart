import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/alert_item.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.02,
        horizontal: 10,
      ),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alerts",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Mark all as read",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffEB4E2A),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const Text(
                "Today",
                style: TextStyle(color: Color(0xff727477), fontSize: 18),
                textAlign: TextAlign.start,
              ),
              Alert_item(
                img_path: "assets/images/Framelike.png",
                text_1: "Sofia, John and +19 others ",
                text_2: "liked your post.",
                time: "10m ago",
              ),
              Alert_item(
                img_path: "assets/images/Framelike.png",
                text_1: "Rebecca, Daisy and +11 other ",
                text_2: "liked your post.",
                time: "30m ago",
              ),
              const Divider(
                color: Color(0xff727477),
                thickness: 1,
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              const Text(
                "Yesterday",
                style: TextStyle(color: Color(0xff727477), fontSize: 18),
                textAlign: TextAlign.start,
              ),
              Alert_item(
                img_path: "assets/images/comment_alert.png",
                text_1: "Katrina, Denver and +2 others ",
                text_2: "commented on \n your post.",
                time: "1d ago",
              ),
              Alert_item(
                img_path: "assets/images/brithday.png",
                text_1: "Savannah Wilson is ",
                text_2: "celebrating birthday today. \n Drop a wish! 🎉",
                time: "1d ago",
              ),
              Alert_item(
                img_path: "assets/images/mention.png",
                text_1: "Ralph Edwards ",
                text_2: "mentioned you in a post.",
                time: "1d ago",
              ),
            ],
          );
        },
      ),
    );
  }
}
