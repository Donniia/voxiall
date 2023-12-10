import 'package:flutter/material.dart';

class Tab_Item extends StatefulWidget {
  final String tabTitle;

  const Tab_Item({super.key, required this.tabTitle,});

  @override
  State<Tab_Item> createState() => _Tab_ItemState();
}

class _Tab_ItemState extends State<Tab_Item> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01,
          vertical: MediaQuery.of(context).size.width * 0.005,
        ),
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.width * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            widget.tabTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}


