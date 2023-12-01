import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/slider_%20post_widget.dart';
import 'package:voxiall/Modules/widgets/custom_tab_bar.dart';

class Search_Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 60,horizontal: 24,
      ),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Container(
              padding: EdgeInsets.only(left: 15,right: 20),
              decoration: BoxDecoration(
                color: Color(0xff323436),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(border: InputBorder.none,
                          hintText: "Search for people, posts, tags...",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color:Color(0xffECEBED) )),
                    ),
                  ),
                  Icon(Icons.search,color: Color(0xff727477),)
                ],
              ),
            ),
            SizedBox(height: 23,),
            Text("Popular",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),textAlign: TextAlign.start,
            ),
            SizedBox(height:23),
            custom_tabbar(),
            SliderPost(username: "Michelle Ogilvy", profilepath: "assets/images/Profile4.png", path1: "assets/images/person1.png", path2: "assets/images/person1.png"),
            SliderPost(username: "Michelle Ogilvy", profilepath: "assets/images/Profile4.png",  path1: "assets/images/person1.png", path2: "assets/images/person1.png"),
          ],

        );
      }),

    );
  }
}
