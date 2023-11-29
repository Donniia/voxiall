import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/tab_item.dart';

class custom_tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: TabBar(
        isScrollable: true,
        indicator: BoxDecoration(),
        labelPadding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        tabs: [
          Tab_Item(TabTitle: "All",),
          Tab_Item(TabTitle: "Profiles",),
          Tab_Item(TabTitle: "Photos",),
          Tab_Item(TabTitle: "Videos", ),
          Tab_Item(TabTitle: "Posts", ),
          Tab_Item(TabTitle: "Links",),
          Tab_Item(TabTitle: "Tags", ),
        ],
      ),
    );
  }
}
