import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Chat/chat_view.dart';
import 'package:voxiall/Modules/widgets/profiles_posts.dart';

class Profiles extends StatefulWidget {
  String profileImg;
  String coverImg;
  String UserName;
  Profiles({super.key, required this.profileImg,required this.coverImg,required this.UserName});

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> with SingleTickerProviderStateMixin {
  late TabController _controller;
  bool isTabed = false;
  int followers = 2467;
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
    return Scaffold(
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index){
            return Column(
              children: [
                Stack(
                  alignment: const Alignment(0, 6),
                  children: [
                    SizedBox(
                      width: mediaQuery.width,
                      height: 120,
                      child: Image.asset(
                        widget.coverImg,
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
                          child: Image.asset(widget.profileImg)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.UserName,
                      style:const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatView(profilePath: widget.profileImg, profileName: widget.UserName)));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        width: mediaQuery.width*0.09,
                        height: mediaQuery.height*0.03,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xffF0C11A),
                            width: 1.5,
                          ),
                        ),
                        child:const ImageIcon(
                          AssetImage("assets/images/message_icon.png"),
                          color: Color(0xffEB4E2A),
                        ),
                      ),
                    ),
                  ],
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
                         followers.toString(),
                          style:const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      const  Text(
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
                        setState(() {
                          if(isTabed){
                            isTabed =false;
                            followers--;
                          }else{
                            isTabed=true;
                            followers++;
                          }
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color:Color(0xffEB4E2A) ),
                          color: isTabed? Colors.transparent: Color(0xffEB4E2A),
                            borderRadius: BorderRadius.circular(20),
                        ),
                        child:  Text(isTabed? "Following":"Follow",style: TextStyle(
                            color: Colors.white,
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
                      Container(
                        width: double.maxFinite,
                        height: mediaQuery.height*3,
                        child: TabBarView(
                            controller: _controller,
                            children:  [
                             ProfilesPosts(UserName: widget.UserName, profileImg: widget.profileImg),
                              const  Text("Stories",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                              const  Text("Liked",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                              const   Text("Tagged",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                            ]),
                      )
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
