import 'package:flutter/material.dart';

import 'mobile_page.dart';
import 'web_page.dart';

class DoctorFavPage extends StatelessWidget {
  const DoctorFavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600 && constraints.maxWidth <= 700) {
          return const DoctorFavWeb(
            widthSizedBox: 500,
          );
        } else if (constraints.maxWidth > 700 && constraints.maxWidth <= 874) {
          return const DoctorFavWeb(
            widthSizedBox: 600,
          );
        } else if (constraints.maxWidth >= 875) {
          return const DoctorFavWeb(
            widthSizedBox: 1000,
          );
        } else {
          return const DoctorFavPageMobile();
        }
      },
    ));
  }
}
