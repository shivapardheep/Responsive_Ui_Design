import 'package:flutter/material.dart';
import 'package:ui_design/theme/app_theme.dart';

class HomePage extends StatefulWidget {
  final Widget mobile_screen;
  final Widget tablet_screen;
  final Widget pc_screen;

  const HomePage(
      {super.key,
      required this.mobile_screen,
      required this.tablet_screen,
      required this.pc_screen});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondaryColor,
      body: LayoutBuilder(builder: (context, size) {
        // if (size.maxWidth < 600) {
        //   return widget.mobile_screen;
        // } else if (size.maxWidth < 1000) {
        //   return widget.tablet_screen;
        // } else {
        return widget.pc_screen;
        // }
      }),
    );
  }
}
