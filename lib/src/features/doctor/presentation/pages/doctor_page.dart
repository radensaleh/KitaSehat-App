import 'package:flutter/material.dart';

import 'mobile_page.dart';
import 'web_page.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600 && constraints.maxWidth <= 700) {
            return const DoctorPageWeb(
              widthSizedBox: 500,
            );
          } else if (constraints.maxWidth > 700 &&
              constraints.maxWidth <= 874) {
            return const DoctorPageWeb(
              widthSizedBox: 600,
            );
          } else if (constraints.maxWidth >= 875) {
            return const DoctorPageWeb(
              widthSizedBox: 1000,
            );
          } else {
            return const DoctorPageMobile();
          }
        },
      ),
    );
  }
}
