import 'package:flutter/material.dart';

class TabletView extends StatefulWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tablet Screen"),
      ),
    );
  }
}
