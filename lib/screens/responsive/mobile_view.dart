import 'package:flutter/material.dart';
import 'package:ui_design/screens/components/drawer_components.dart';
import 'package:ui_design/theme/app_theme.dart';
import 'package:ui_design/widgets/drawer_widget.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Screen"),
      ),
      drawer: const DrawerScreen(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
                    aspectRatio: 9 / 1,
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
