import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../data/models/report.dart';

class LastReports extends StatelessWidget {
  const LastReports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getWidget(
      context,
      MediaQuery.of(context).size.width,
    );
  }

  Widget getWidget(context, constrains) {
    if (constrains > 928 && constrains < 1015) {
      return SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 570,
          child: const LastReportGrid(
            gridCount: 2,
            aspectRatio: 4.5,
          ),
        ),
      );
    } else if (constrains >= 1015) {
      return SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 380,
          child: const LastReportGrid(
            gridCount: 3,
            aspectRatio: 3,
          ),
        ),
      );
    } else {
      return SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 570,
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 0),
            itemBuilder: (context, index) {
              final ReportModel report = reportList[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(
                      color: HexColor('#D7DDEA'),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#D6FFF3'),
                        ),
                        child: Image.asset('assets/icons/document.png'),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            report.name,
                            style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${report.file}, ${report.date}',
                            style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: reportList.length,
          ),
        ),
      );
    }
  }
}

class LastReportGrid extends StatelessWidget {
  final int gridCount;
  final double aspectRatio;
  const LastReportGrid({
    Key? key,
    required this.gridCount,
    required this.aspectRatio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: gridCount,
      childAspectRatio: aspectRatio,
      controller: ScrollController(keepScrollOffset: false),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: reportList.map((report) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15, right: 10),
          child: Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              border: Border.all(
                color: HexColor('#D7DDEA'),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: HexColor('#D6FFF3'),
                  ),
                  child: Image.asset('assets/icons/document.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      report.name,
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${report.file}, ${report.date}',
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
