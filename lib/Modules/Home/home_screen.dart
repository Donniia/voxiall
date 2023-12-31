import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/post.dart';
import 'package:voxiall/Modules/Home/slider_%20post_widget.dart';
import 'package:voxiall/Modules/Home/story_item.dart';
import 'package:voxiall/Modules/Messages/message_screen.dart';
import 'package:voxiall/Modules/widgets/photo_post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routName = "home";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.01,
        horizontal: screenWidth * 0.01,
      ),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Text(
                    "  VOXIAL",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MessageScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      width: 40,
                      height: 40,
                      margin:const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff727477),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Badge(
                        backgroundColor: Color(0xffF0C11A),
                        child: ImageIcon(
                          AssetImage("assets/images/message_icon.png"),
                          color: Color(0xffEB4E2A),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryItem(
                      storyprofile: "assets/images/Profile_Photo.png",
                      story: "assets/images/Story1.png",
                      UserName: 'Kim',
                      time: '30m ago',
                    ),
                    StoryItem(
                      storyprofile: "assets/images/Cr7.png",
                      story: "assets/images/Story2.png",
                      UserName: 'Cristiano',
                      time: '1h ago',
                    ),
                    StoryItem(
                      storyprofile: "assets/images/storyprofile2.png",
                      story: "assets/images/Story3.png",
                      UserName: 'Jennie',
                      time: '30m ago',
                    ),
                    StoryItem(
                      storyprofile: "assets/images/storyprofile2.png",
                      story: "assets/images/Story3.png",
                      UserName: 'Jennie',
                      time: '30m ago',
                    ),
                    StoryItem(
                      storyprofile: "assets/images/storyprofile2.png",
                      story: "assets/images/Story3.png",
                      UserName: 'Jennie',
                      time: '30m ago',
                    ),
                    StoryItem(
                      storyprofile: "assets/images/storyprofile2.png",
                      story: "assets/images/Story3.png",
                      UserName: 'Jennie',
                      time: '30m ago',
                    ),
                    StoryItem(
                      storyprofile: "assets/images/storyprofile2.png",
                      story: "assets/images/Story3.png",
                      UserName: 'Jennie',
                      time: '30m ago',
                    ),

                  ],
                ),
              ),
              const Divider(
                color: Color(0xff323436),
                height: 2,
                thickness: 2,
              ),
              PhotoPost(
                username: "Cillian Murphy",
                profilepath: "assets/images/ProfilePhoto2.png",
                path1: "assets/images/caillian1.png",
              ),

              const Post(
                username: "Jacob Washington",
                profilepath: "assets/images/Profile2.png",
                post:
                "If you think you too small to make \n a difference, try sleeping with a mosquito. \n \n ~ Dalai Lama",
              ),
              const SliderPost(
                username: "thv",
                profilepath: "assets/images/V_profile.png",
                path1: "assets/images/V_post.png",
                path2: "assets/images/V_post.png",
              ),
              const Post(
                username: "Tony Montana",
                profilepath: "assets/images/Profile5.png",
                post: "Writing code is not so bad!",
              ),
              PhotoPost(
                username: "Jessica Thompson",
                profilepath: "assets/images/Jessica_Thompson1.png",
                path1: "assets/images/post1.png",
              ),
              PhotoPost(
                username: "Dustin Grant",
                profilepath: "assets/images/Profile6.png",
                path1: "assets/images/postphoto2.png",
              ),
              PhotoPost(
                username: "Jessica Thompson",
                profilepath: "assets/images/Jessica_Thompson1.png",
                path1: "assets/images/post3.png",
              ),
            ],
          );
        },
      ),
    );
  }
}
