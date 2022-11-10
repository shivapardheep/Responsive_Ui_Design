import 'package:flutter/material.dart';
import 'package:ui_design/screens/DashBoard_Screen/dash_board_screen.dart';

import 'package:ui_design/screens/components/drawer_components.dart';

class PcView extends StatefulWidget {
  const PcView({Key? key}) : super(key: key);

  @override
  State<PcView> createState() => _PcViewState();
}

class _PcViewState extends State<PcView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Expanded(child: DrawerScreen()),
          Expanded(flex: 5, child: DashBoardScreen()),
        ],
      ),
    );
  }
}
