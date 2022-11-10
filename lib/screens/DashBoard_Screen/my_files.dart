import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../constants.dart';
import '../../models/MyFiles.dart';

class MyFilesCard extends StatelessWidget {
  const MyFilesCard({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: 5,
          childAspectRatio: 1.3,
        ),
        itemBuilder: (context, i) {
          return MyFilesCardWidget(
            svgSrc: demoMyFiles[i].svgSrc,
            title: demoMyFiles[i].title,
            totalStorage: demoMyFiles[i].totalStorage,
            numOfFiles: demoMyFiles[i].numOfFiles,
            percentage: demoMyFiles[i].percentage,
            color: demoMyFiles[i].color,
          );
        });
  }
}

class MyFilesCardWidget extends StatelessWidget {
  const MyFilesCardWidget({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
    required this.numOfFiles,
    required this.percentage,
    required this.color,
  }) : super(key: key);

  final String svgSrc, title, totalStorage;
  final int numOfFiles, percentage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: secondaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: color.withOpacity(0.05),
                  ),
                  child: SvgPicture.asset(svgSrc),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          LinearPercentIndicator(
            padding: const EdgeInsets.only(left: 0),
            // width: _width * 0.09,
            lineHeight: 5.0,
            percent: 0.5,
            backgroundColor: color.withOpacity(0.2),
            progressColor: color,
            barRadius: const Radius.circular(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$numOfFiles Files",
                style: TextStyle(color: Colors.white54),
              ),
              Text("$totalStorage", style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
