import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Registeration/log_in.dart';
import 'package:voxiall/Modules/widgets/profile_posts.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({super.key});



  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> with SingleTickerProviderStateMixin {
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
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index) {
          return Column(
            children: [
              Stack(
                alignment: const Alignment(0, 5),
                children: [
                  SizedBox(
                    width: mediaQuery.width,
                    height: 120,
                    child: Image.asset(
                      "assets/images/myBG.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2.5),
                    width: mediaQuery.width,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xffEB4E2A), Color(0xffF0C11A)]),
                    ),
                    child: Container(
                        padding: const EdgeInsets.all(2.5),
                        decoration: const BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child: Image.asset("assets/images/myProfile.png")),
                  )
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const  Text(
                "Ichigo Kuroaski",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Brooklyn, NY",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff727477),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Writer by Profession. Artist by Passion!",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    children: [
                      Text(
                        "2,467",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            color: Color(0xffEB4E2A),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Column(
                    children: [
                      Text(
                        "1,589",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            color: Color(0xffEB4E2A),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, LogIn.routename);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xffF0C11A),width: 1.3)
                      ),
                      child: const Text("Logout",style:  TextStyle(
                          color: Color(0xffEB4E2A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                        controller: _controller,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: const Color(0xffEB4E2A),
                        tabs: const [
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
                        ]
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: mediaQuery.height*3,
                      child: TabBarView(
                          controller: _controller,
                          children:  const [
                            MyProfilePosts(),
                            Text("Stories",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                            Text("Liked",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                            Text("Tagged",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                          ]),
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}