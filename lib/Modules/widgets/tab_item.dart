import 'package:flutter/material.dart';

class Tab_Item extends StatefulWidget {
  final String tabTitle;

  Tab_Item({required this.tabTitle});

  @override
  _Tab_ItemState createState() => _Tab_ItemState();
}

class _Tab_ItemState extends State<Tab_Item> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01,
          vertical: MediaQuery.of(context).size.width * 0.005,
        ),
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.width * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Color(0xff727477), width: 1.3),
          gradient: isSelected
              ? LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
          )
              : null,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            widget.tabTitle,
            style: TextStyle(
              color: isSelected ? Colors.white : Color(0xff727477),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}


