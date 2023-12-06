import 'package:flutter/material.dart';
import 'package:voxiall/Modules/Home/slider_%20post_widget.dart';
import 'package:voxiall/Modules/widgets/custom_tab_bar.dart';

class Search_Screen extends StatelessWidget {
  const Search_Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        media.width * 0.065,
        media.height * 0.05, // Adjust the top padding for spacing
        media.width * 0.065,
        media.height * 0.01, // Adjust the bottom padding for spacing
      ),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: media.width * 0.04,
                  right: media.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff323436),
                  borderRadius: BorderRadius.circular(media.width * 0.2),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for people, posts, tags...",
                          hintStyle: TextStyle(
                            fontSize: media.width * 0.03,
                            color: const Color(0xffECEBED),
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: Color(0xff727477),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: media.height * 0.01,
              ),
              Text(
                "Popular",
                style: TextStyle(
                  fontSize: media.width * 0.055,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: media.height * 0.015),
          custom_tabbar(),

            ],
          );
        },
      ),
    );
  }
}
