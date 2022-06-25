import 'package:flutter/material.dart';

class DoctorsOnline extends StatelessWidget {
  DoctorsOnline({Key? key}) : super(key: key);
  final List<String> imgDoctorList = <String>[
    'assets/images/doctor_online1.png',
    'assets/images/doctor_online2.png',
    'assets/images/doctor_online3.png',
    'assets/images/doctor_online4.png',
    'assets/images/doctor_online1.png',
    'assets/images/doctor_online2.png',
    'assets/images/doctor_online3.png',
    'assets/images/doctor_online4.png',
    'assets/images/doctor_online1.png',
    'assets/images/doctor_online2.png',
    'assets/images/doctor_online3.png',
    'assets/images/doctor_online4.png',
    'assets/images/doctor_online1.png',
    'assets/images/doctor_online2.png',
    'assets/images/doctor_online3.png',
    'assets/images/doctor_online4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: imgDoctorList.map((doctor) {
          return Container(
            padding: const EdgeInsets.all(3),
            child: Stack(
              children: [
                Image.asset(doctor),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset('assets/icons/ellipse.png'),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
