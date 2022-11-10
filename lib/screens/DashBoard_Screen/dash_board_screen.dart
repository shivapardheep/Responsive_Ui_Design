import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui_design/constants.dart';
import 'package:ui_design/models/MyFiles.dart';
import 'package:ui_design/models/RecentFile.dart';
import 'package:ui_design/screens/DashBoard_Screen/storage_card.dart';

import 'my_files.dart';

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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      MyFilesCard(width: _width),
                      const SizedBox(height: 20),
                      Container(
                        height: _height * 0.55,
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: secondaryColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Recent Files",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(columns: const [
                                // Set the name of the column
                                DataColumn(
                                  label: Text(
                                    'File Name',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Date',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Size',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ], rows: [
                                // Set the values to the columns
                                for (var i in demoRecentFiles) ...{
                                  DataRow(cells: [
                                    DataCell(Row(
                                      // mainAxisAlignment:
                                      // MainAxisAlignment.spaceBetween,
                                      children: [
                                        SvgPicture.asset(i.icon),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(i.title,
                                              style: const TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      ],
                                    )),
                                    DataCell(Text(i.date,
                                        style: const TextStyle(
                                            color: Colors.white))),
                                    DataCell(Text(i.size,
                                        style: const TextStyle(
                                            color: Colors.white))),
                                  ]),
                                },
                              ]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const StorageCard(),
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
