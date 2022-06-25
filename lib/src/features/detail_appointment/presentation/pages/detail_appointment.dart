import 'package:flutter/material.dart';
import 'package:submission1_dicoding/src/features/home/data/models/appointment.dart';

import 'mobile_page.dart';
import 'web_page.dart';

class DetailAppointment extends StatelessWidget {
  final AppointmentModel appointment;

  const DetailAppointment({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600 && constraints.maxWidth <= 700) {
          return DetailAppointmentWeb(
            appointment: appointment,
            widthSizedBox: 500,
          );
        } else if (constraints.maxWidth > 700 && constraints.maxWidth <= 874) {
          return DetailAppointmentWeb(
            appointment: appointment,
            widthSizedBox: 600,
          );
        } else if (constraints.maxWidth >= 875) {
          return DetailAppointmentWeb(
            appointment: appointment,
            widthSizedBox: 1000,
          );
        } else {
          return DetailAppointmentMobile(
            appointment: appointment,
          );
        }
      },
    );
  }
}
