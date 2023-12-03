import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/home_screen.dart';


class Create_post extends StatelessWidget {
 final LinearGradient colored = const LinearGradient(
      colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  const Create_post({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, HomeScreen.routName);
                },
                child: const Text(
                  "Discard",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF0C11A),
                  ),
                ),
              ),
              ShaderMask(
                shaderCallback: (Rect rect) {
                  return colored.createShader(rect);
                },
                child: const Text(
                  "Create",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, HomeScreen.routName);
                },
                child: Container(
                  width: 70,
                  height: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffEB4E2A)),
                  child: const Text(
                    "publish",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 75,
                alignment: Alignment.topLeft,
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/ProfilePhoto1.png"),
                ),
              ),
              const Expanded(
                  child: TextField(
                maxLines: 3,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: " What’s on your mind?",
                  hintStyle: TextStyle(color: Color(0xff727477)),
                ),
                scrollPadding: EdgeInsets.all(20.0),
                autofocus: true,
              )),
            ],
          ),
          SizedBox.fromSize(
            size: const Size.square(45),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xff323436),
              child: const Icon(
                Icons.add,
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              width: 155,
              height: 32,
              decoration: BoxDecoration(
                  color: const Color(0xff181A1C),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xff323436))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 68,
                    height: 20,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xffEB4E2A),
                            Color(0xffF0C11A)
                          ]

                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      "POST",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: 68,
                    height: 20,
                    decoration: BoxDecoration(
                      // color: Colors.orange,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      "STORY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}
