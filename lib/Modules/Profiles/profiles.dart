import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Chat/chat_view.dart';

class Profiles extends StatelessWidget {
  String profileImg;
  String coverImg;
  String UserName;
  Profiles({super.key, required this.profileImg,required this.coverImg,required this.UserName});

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
                        coverImg,
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
                          child: Image.asset(profileImg)),
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
                      UserName,
                      style:const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatView(profilePath: profileImg, profileName: UserName)));
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
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffEB4E2A),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text("Follow",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),),
                    )
                  ],
                ),
              ],
            );
          }),
    );
  }
}
