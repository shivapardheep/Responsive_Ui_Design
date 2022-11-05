import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widgets/drawer_widget.dart';

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
      drawer: DrawerClass.drawerWidget,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    color: AppTheme.primaryColor,
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, i) {
                  return AspectRatio(
                    aspectRatio: 10 / 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      color: Colors.deepPurpleAccent,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
