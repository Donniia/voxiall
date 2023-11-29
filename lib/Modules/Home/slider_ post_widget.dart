
import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/post_footer.dart';
import 'package:voxiall/Modules/widgets/post_header.dart';

class SliderPost extends StatelessWidget {
  String username;
  String profilepath;
  String time;
  String path1;
  String path2;

   SliderPost({required this.username,required this.profilepath,required this.time,required this.path1,required this.path2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(title: username, imgPath: profilepath, timer: time),
          Container(
            height: 250,
            child: PageView(
              children: [
                Image(image: AssetImage(path1)),
                Image(image: AssetImage(path2)),
              ],
            ),
          ),
          PostFooter(),
          SizedBox(height: 10,),
          Divider(thickness: 2,color: Color(0xff323436),)
        ],
      ),
    );
  }
}
