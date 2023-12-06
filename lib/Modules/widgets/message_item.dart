import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  bool border;
  String message;
  Message({super.key, required this.border, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 20),
      width: 280,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft:
                  border ? const Radius.circular(0) : const Radius.circular(25),
              topRight: const Radius.circular(25),
              bottomLeft: const Radius.circular(25),
              bottomRight: border
                  ? const Radius.circular(25)
                  : const Radius.circular(0)),
          color: border ? const Color(0xff323436) : Colors.white,
          gradient: border
              ? const LinearGradient(
                  colors: [Color(0xff323436), Color(0xff323436)])
              : const LinearGradient(
                  colors: [Color(0xffEB4E2A), Color(0xffF0C11A)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
      child: Text(
        message,
        style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}
