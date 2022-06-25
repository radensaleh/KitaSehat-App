import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../doctor/presentation/pages/doctor_page.dart';
import '../../../doctor/presentation/pages/doctor_favorite/fav_doctor_page.dart';
import '../../../notification/presentation/pages/notification_page.dart';
import '../../../report/presentation/pages/report_page.dart';
import '../widgets/list_appointment.dart';
import '../widgets/list_pharmacy.dart';
import '../widgets/menu_icon.dart';

class HomePageWeb extends StatelessWidget {
  final double widthSizedBox;
  const HomePageWeb({
    Key? key,
    required this.widthSizedBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        top: 50,
        left: 25,
        right: 25,
        bottom: 15,
      ),
      child: Center(
        child: SizedBox(
          width: widthSizedBox,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '👋 Hello!',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15,
                          color: HexColor('#253141'),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Raden Saleh',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#253141'),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(13),
                    child: Image.asset('assets/images/photo_profile.png'),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Pelayanan',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: HexColor('#253141'),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: HexColor('#1C6BA4'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DoctorPage(),
                          ),
                        );
                      },
                      child: Card(
                        color: HexColor('#DCEDF9'),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: getMenuIcon(
                            MediaQuery.of(context).size.width,
                            'assets/icons/doctor.png',
                            'Daftar Doktor',
                            '#1C6BA4',
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: HexColor('#9D4C6C'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DoctorFavPage(),
                          ),
                        );
                      },
                      child: Card(
                        color: HexColor('#F2E3E9'),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: getMenuIcon(
                            MediaQuery.of(context).size.width,
                            'assets/icons/medical_test1.png',
                            'Doktor Favorit',
                            '#9D4C6C',
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: HexColor('#009DC7'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReportPage(),
                          ),
                        );
                      },
                      child: Card(
                        color: HexColor('#D6F6FF'),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: getMenuIcon(
                            MediaQuery.of(context).size.width,
                            'assets/icons/virus1.png',
                            'Laporan Sehat',
                            '#009DC7',
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: HexColor('#E09F1F'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationPage(),
                          ),
                        );
                      },
                      child: Card(
                        color: HexColor('#FAF0DB'),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: getMenuIcon(
                            MediaQuery.of(context).size.width,
                            'assets/icons/pill.png',
                            'Notifikasi',
                            '#E09F1F',
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(25),
                child: Card(
                  color: HexColor('#DCEDF9'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: getBannerText(
                            MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Image.asset('assets/images/banner_doctor.png'),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Jadwal Periksa',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: HexColor('#253141'),
                ),
              ),
              const SizedBox(height: 10),
              const Appointment(),
              const SizedBox(height: 15),
              Text(
                'Apotek Terdekat',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: HexColor('#253141'),
                ),
              ),
              const SizedBox(height: 10),
              const PharmacyNearby(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getMenuIcon(constrains, icon, title, iconColor) {
    if (constrains > 875) {
      return MenuIcon(
        icon: icon,
        title: title,
        iconColor: iconColor,
      );
    } else {
      return Image.asset(icon);
    }
  }

  Widget getBannerText(constrains) {
    if (constrains > 875) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Dapatkan Pelayanan Medis Terbaik Kami',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Nunito',
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Lorem Ipsum is simply dummy text of the printing.',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Nunito',
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Dapatkan Pelayanan Medis Terbaik Kami',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'Nunito',
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem Ipsum is simply dummy text of the printing.',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Nunito',
            ),
          ),
        ],
      );
    }
  }
}
