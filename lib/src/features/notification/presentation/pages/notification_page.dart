import 'package:flutter/material.dart';
import 'web_page.dart';
import 'mobile_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
              return const NotificationPageWeb(widthSizedBox: 500);
            } else if (constraints.maxWidth > 700 &&
                constraints.maxWidth <= 874) {
              return const NotificationPageWeb(widthSizedBox: 600);
            } else if (constraints.maxWidth >= 875) {
              return const NotificationPageWeb(widthSizedBox: 1000);
            } else {
              return const NotificationPageMobile();
            }
          },
        ),
      ),
    );
  }
}
