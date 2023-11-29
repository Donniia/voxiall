import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PostHeader(
              title: "Jacob Washington",
              imgPath: "assets/images/Profile2.png",
              timer: "20m ago"),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Text(
                "If you think you too small to make \n a difference, try sleeping with a mosquito. \n \n ~ Dalai Lama",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22),
              )),
          PostFooter(),
          Divider()
        ],
      ),
    );
  }
}
