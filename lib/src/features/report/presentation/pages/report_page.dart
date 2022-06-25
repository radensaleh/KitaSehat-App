import 'package:flutter/material.dart';

import 'web_page.dart';
import 'mobile_page.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 50,
          left: 25,
          right: 25,
          bottom: 15,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600 && constraints.maxWidth <= 700) {
              return const ReportPageWeb(widthSizedBox: 500);
            } else if (constraints.maxWidth > 700 &&
                constraints.maxWidth <= 874) {
              return const ReportPageWeb(widthSizedBox: 600);
            } else if (constraints.maxWidth >= 875) {
              return const ReportPageWeb(widthSizedBox: 1000);
            } else {
              return const ReportPageMobile();
            }
          },
        ),
      ),
    );
  }
}
