import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'dash_board_screen.dart';

class StorageCard extends StatelessWidget {
  const StorageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: secondaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Storage Details',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const chartWidget(),
              Column(
                children: const [
                  StorageFilesWidget(
                    svgImage: 'assets/icons/Documents.svg',
                    title: 'Documents Files',
                    numOfFiles: '1328',
                    storage: '1.3',
                  ),
                  StorageFilesWidget(
                    svgImage: 'assets/icons/media.svg',
                    title: 'Media Files',
                    numOfFiles: '1328',
                    storage: '15.3',
                  ),
                  StorageFilesWidget(
                    svgImage: 'assets/icons/folder.svg',
                    title: 'Other Files',
                    numOfFiles: '1328',
                    storage: '1.3',
                  ),
                  StorageFilesWidget(
                    svgImage: 'assets/icons/unknown.svg',
                    title: 'Unknown',
                    numOfFiles: '140',
                    storage: '1.3',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class chartWidget extends StatelessWidget {
  const chartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(centerSpaceRadius: 70, sectionsSpace: 0, sections: [
              PieChartSectionData(
                value: 55,
                color: Colors.blue,
                radius: 25,
                showTitle: false,
              ),
              PieChartSectionData(
                value: 23,
                color: Colors.red,
                radius: 21,
                showTitle: false,
              ),
              PieChartSectionData(
                value: 44,
                color: Colors.lightBlueAccent,
                radius: 18,
                showTitle: false,
              ),
              PieChartSectionData(
                value: 77,
                color: const Color(0xff2A3752),
                radius: 15,
                showTitle: false,
              ),
              PieChartSectionData(
                value: 15,
                color: Colors.yellow,
                radius: 11,
                showTitle: false,
              ),
            ]),
          ),
          Positioned(
            child: RichText(
                text: const TextSpan(
                    text: "29.1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    children: [
                  TextSpan(
                      text: "\nof 128 GB",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      )),
                ])),
          ),
        ],
      ),
    );
  }
}
