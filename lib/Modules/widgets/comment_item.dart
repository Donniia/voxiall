import 'package:flutter/material.dart';

class CommentItem extends StatefulWidget {
  final String imgpath;
  final String username;
  final String comment;

   CommentItem({super.key, required this.imgpath, required this.username, required this.comment});

  @override
  State<CommentItem> createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
  bool isTabed =false;

  int likes = 86;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: media.width*0.02,vertical: media.height*0.01),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // margin: EdgeInsets.only(top: 10),
            alignment: Alignment.topLeft,
            width: 45,
            height: 70,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(widget.imgpath),
              maxRadius: media.width * 0.045,
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.username,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
              const SizedBox(height: 6,),
              Text(widget.comment,style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white),),
              const SizedBox(height: 6,),
              Text("2m ago . $likes likes",style:const TextStyle(fontSize: 13,fontWeight: FontWeight.w300,color: Color(0xff727477)),),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                if(isTabed){
                  likes--;
                  isTabed = false;
                }else {
                  likes++;
                  isTabed = true;
                }
              });
            },
            child: ImageIcon(
                const AssetImage("assets/images/Like_icon.png"),
                color: isTabed ? const Color(0xffEB4E2A) : Color(0xff727477)
            ),
          ),
        ],
      ),
    );
  }
}
