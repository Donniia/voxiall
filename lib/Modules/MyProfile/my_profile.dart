import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/item_clicked.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState(){
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  List<Widget> tabs = [
    Text("Posts",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),),
    Text("Stories",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),),
    Text("Links",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),),
    Text("Tagged",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
        itemBuilder: (context,index) {
      return Column(
        children: [
          Stack(
            alignment: const Alignment(0, 9),
            children: [
              Container(
                width: double.infinity,
                height: 180,
                child: Image.asset(
                  "assets/images/myBG.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.5),
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xffEB4E2A), Color(0xffF0C11A)]),
                ),
                child: Container(
                    padding: EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: Image.asset("assets/images/myProfile.png")),
              )
            ],
          ),
          SizedBox(
            height: 90,
          ),
          Text(
            "Ichigo Kurosaki",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Brooklyn, NY",
            style: TextStyle(
                fontSize: 18,
                color: Color(0xff727477),
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Writer by Profession. Artist by Passion!",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "2,467",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(
                        color: Color(0xffEB4E2A),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "1,589",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Following",
                    style: TextStyle(
                        color: Color(0xffEB4E2A),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: 133,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xffF0C11A),width: 1.3)
                ),
                child: Text("Logout",style:  TextStyle(
                    color: Color(0xffEB4E2A),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),),
              )
            ],
          ),
          SizedBox(height: 20,),
          DefaultTabController(
            length: 4,
            child: Column(
              children: [
                TabBar(
                  controller: _controller,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color(0xffEB4E2A),
                    tabs: [
                      Tab(
                        text: "Posts",
                      ),
                      Tab(
                        text: "Stories",
                      ),
                      Tab(
                        text: "Liked",
                      ),
                      Tab(
                        text: "Tagged",
                      ),
                    ]),
              ],
            ),
          )
        ],
      );
    });
  }
}
