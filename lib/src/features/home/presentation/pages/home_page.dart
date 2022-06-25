import 'package:flutter/material.dart';

import 'mobile_page.dart';
import 'web_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600 && constraints.maxWidth <= 700) {
            return const HomePageWeb(widthSizedBox: 500);
          } else if (constraints.maxWidth > 700 &&
              constraints.maxWidth <= 874) {
            return const HomePageWeb(widthSizedBox: 600);
          } else if (constraints.maxWidth >= 875) {
            return const HomePageWeb(widthSizedBox: 1000);
          } else {
            return const HomePageMobile();
          }
        },
      ),
    );
  }
}
