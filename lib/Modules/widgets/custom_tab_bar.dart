import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/all_tab.dart';

import 'package:voxiall/Modules/widgets/tab_item.dart';

class custom_tabbar extends StatefulWidget {
  const custom_tabbar({super.key});

  @override
  State<custom_tabbar> createState() => _custom_tabbarState();
}

class _custom_tabbarState extends State<custom_tabbar>  with SingleTickerProviderStateMixin{

  late TabController _controller;

  @override
  void initState(){
    _controller = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 7,
      child: Column(
        children: [
          TabBar(
            controller: _controller,
             indicatorWeight: 0.1,
            isScrollable: true,
            indicator: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(25)
            ),
            labelPadding: EdgeInsets.symmetric(
              horizontal: media.width * 0.03,
            ),
            tabs: const [
              Tab_Item(tabTitle: "All",),
              Tab_Item(tabTitle: "Profiles",),
              Tab_Item(tabTitle: "Photos",),
              Tab_Item(tabTitle: "Videos",),
              Tab_Item(tabTitle: "Posts",),
              Tab_Item(tabTitle: "Links",),
              Tab_Item(tabTitle: "Tags",),
            ],
          ),
          SizedBox(
              width: double.maxFinite,
              height: media.height*2,
            child: TabBarView(
              controller: _controller,
              children:const [
              AllTab(),
                Text("Profile",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                Text("Photos",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                Text("Videos",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                Text("Posts",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                Text("Links",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
                Text("Tags",style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
