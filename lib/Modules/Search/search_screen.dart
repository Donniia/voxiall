import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/slider_%20post_widget.dart';
import 'package:voxiall/Modules/widgets/custom_tab_bar.dart';

class Search_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: media.height * 0.1,
        horizontal: media.width * 0.08,
      ),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(left: media.width * 0.04, right: media.width * 0.05),
                  decoration: BoxDecoration(
                    color: Color(0xff323436),
                    borderRadius: BorderRadius.circular(media.width * 0.2),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for people, posts, tags...",
                            hintStyle: TextStyle(fontSize: media.width * 0.03, color: Color(0xffECEBED)),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xff727477),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: media.height * 0.03,
                ),
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: media.width * 0.08,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: media.height * 0.03),
                custom_tabbar(),
                SliderPost(
                  username: "Michelle Ogilvy",
                  profilepath: "assets/images/Profile4.png",
                  path1: "assets/images/person1.png",
                  path2: "assets/images/person1.png",
                ),
                SliderPost(
                  username: "Michelle Ogilvy",
                  profilepath: "assets/images/Profile4.png",
                  path1: "assets/images/person1.png",
                  path2: "assets/images/person1.png",
                ),
              ],
            );
          }),
    );
  }
}
