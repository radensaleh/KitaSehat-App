import 'package:flutter/material.dart';
import 'package:submission1_dicoding/src/features/doctor/data/models/doctors.dart';

import 'mobile_page.dart';
import 'web_page.dart';

class DetailDoctor extends StatelessWidget {
  final DoctorModel doctor;
  const DetailDoctor({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600 && constraints.maxWidth <= 700) {
          return DetailDoctorWeb(
            doctor: doctor,
            widthSizedBox: 500,
          );
        } else if (constraints.maxWidth > 700 && constraints.maxWidth <= 874) {
          return DetailDoctorWeb(
            doctor: doctor,
            widthSizedBox: 600,
          );
        } else if (constraints.maxWidth >= 875) {
          return DetailDoctorWeb(
            doctor: doctor,
            widthSizedBox: 1000,
          );
        } else {
          return DetailDoctorMobile(
            doctor: doctor,
          );
        }
      },
    );
  }
}
