import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/constants.dart';
import 'package:ui_design/models/MyFiles.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      color: bgColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          HeadingWidget(width: _width),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _height * 0.03),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "My Files",
                            style: TextStyle(color: Colors.white),
                          ),
                          ElevatedButton.icon(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10)),
                            onPressed: () {},
                            label: const Text("Add New",
                                style: TextStyle(color: Colors.white)),
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StorageFilesWidget extends StatelessWidget {
  final String svgImage;
  final String title;
  final String numOfFiles;
  final String storage;

  const StorageFilesWidget(
      {super.key,
      required this.svgImage,
      required this.title,
      required this.numOfFiles,
      required this.storage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff3f66a8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 25,
            width: 25,
            child: SvgPicture.asset(
              svgImage,
              // height: 25,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    numOfFiles + " Files",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
          ),
          Text(
            storage + "GB",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
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

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 3,
          child: Text(
            "Dashboard",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Expanded(
          flex: 2,
          child: SearchWidget(),
        ),
        SizedBox(
          width: _width * 0.02,
        ),
        const Expanded(
          // flex: 2,
          child: profileCardWidget(),
        )
      ],
    );
  }
}

class profileCardWidget extends StatelessWidget {
  const profileCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(color: Colors.white54),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/jackma_profile.png",
            height: 25,
            width: 25,
          ),
          const Text(
            "Jack ma",
            style: TextStyle(color: Colors.white),
          ),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        focusColor: Colors.red,
        hintText: "Search",
        hintStyle: const TextStyle(color: Colors.white54),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
