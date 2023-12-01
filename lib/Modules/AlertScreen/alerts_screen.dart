import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        children: [
         const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Alerts",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                "Mark all as read",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffEB4E2A),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
