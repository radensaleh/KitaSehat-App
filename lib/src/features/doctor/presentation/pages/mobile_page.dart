import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widgets/list_doctors.dart';
import '../widgets/list_doctors_online.dart';
import '../widgets/title_bar.dart';

class DoctorPageMobile extends StatelessWidget {
  const DoctorPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
        left: 25,
        right: 25,
        bottom: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TitleBarDoctor(
            title: 'Daftar Dokter',
          ),
          const SizedBox(height: 35),
          Text(
            'Pelayanan',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: HexColor('#253141'),
            ),
          ),
          const SizedBox(height: 10),
          DoctorsOnline(),
          const SizedBox(height: 25),
          Text(
            'Doktor Populer',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: HexColor('#253141'),
            ),
          ),
          const SizedBox(height: 5),
          const Doctors(),
        ],
      ),
    );
  }
}
