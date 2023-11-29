import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/slider_%20post_widget.dart';
import 'package:voxiall/Modules/widgets/custom_tab_bar.dart';

class Search_Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 68,horizontal: 24,
      ),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 327,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xff323436),
                borderRadius: BorderRadius.circular(25),
              ),

              child: Row(
                children: [
                  Icon(Icons.search , color: Color(0xff727477),),
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
