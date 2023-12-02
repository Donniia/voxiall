import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:voxiall/Modules/widgets/tab_item.dart';

class custom_tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 7,
      child: TabBar(
        isScrollable: true,
        indicator: BoxDecoration(),
        labelPadding: EdgeInsets.symmetric(
          horizontal: media.width * 0.03,
        ),
        tabs: [
          Tab_Item(tabTitle: "All",),
          Tab_Item(tabTitle: "Profiles"),
          Tab_Item(tabTitle: "Photos"),
          Tab_Item(tabTitle: "Videos"),
          Tab_Item(tabTitle: "Posts"),
          Tab_Item(tabTitle: "Links"),
          Tab_Item(tabTitle: "Tags"),
        ],
      ),
    );
  }
}
