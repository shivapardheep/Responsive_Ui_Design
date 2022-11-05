import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/home_page/homepage.dart';
import 'package:ui_design/screens/responsive/mobile_view.dart';
import 'package:ui_design/screens/responsive/pc_view.dart';
import 'package:ui_design/screens/responsive/tablet_view.dart';

void main() => runApp(
      const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage(
      mobile_screen: MobileView(),
      tablet_screen: TabletView(),
      pc_screen: PcView(),
    );
  }
}
