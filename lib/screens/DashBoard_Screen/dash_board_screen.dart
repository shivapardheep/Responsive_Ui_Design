import 'package:flutter/material.dart';
import 'package:ui_design/constants.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Dashboard",
                style: TextStyle(color: Colors.black),
              ),
              Expanded(
                child: TextField(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
