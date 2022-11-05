import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widgets/drawer_widget.dart';

class PcView extends StatefulWidget {
  const PcView({Key? key}) : super(key: key);

  @override
  State<PcView> createState() => _PcViewState();
}

class _PcViewState extends State<PcView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pc Screen"),
      ),
      body: Row(
        children: [
          DrawerClass.drawerWidget,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            color: Colors.deepPurpleAccent,
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
