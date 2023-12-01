import 'package:flutter/material.dart';

class Tab_Item extends StatelessWidget {
  String TabTitle;
   Tab_Item({required this.TabTitle});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3) ,
      width: 60,height: 26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Color(0xff727477),width: 1.3),
      ),
      child: Text(TabTitle,style: TextStyle(color: Colors.white),
      textAlign: TextAlign.center,
      ),
    );
  }
}
