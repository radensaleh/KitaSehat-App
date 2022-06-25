import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../appointment/presentation/pages/form_appoinment.dart';
import '../../../detail_appointment/presentation/widgets/schedule.dart';
import '../../../doctor/data/models/doctors.dart';
import '../widgets/card_doctor.dart';
import '../widgets/favorite_doctor.dart';

class DetailDoctorMobile extends StatelessWidget {
  final DoctorModel doctor;
  const DetailDoctorMobile({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                color: HexColor('#1C6BA4'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 50,
              left: 25,
              right: 25,
              bottom: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      enableFeedback: false,
                      highlightColor: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(
                            color: HexColor('#D7DEEA'),
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      'Detail Doktor',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                    FavoriteDoctor(
                      doctor: doctor,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                CardDoctor(
                  photo: doctor.photo,
                  name: doctor.name,
                  skill: doctor.skill,
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#E8EBED'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pasien',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  color: HexColor('#4A545E'),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                doctor.patiens,
                                style: const TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#E8EBED'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Exp.',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  color: HexColor('#4A545E'),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                doctor.experience,
                                style: const TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HexColor('#E8EBED'),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ulasan',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  color: HexColor('#4A545E'),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                doctor.review.toString(),
                                style: const TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  'Tentang',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 595,
                  child: ListView(
                    padding: const EdgeInsets.only(top: 0),
                    scrollDirection: Axis.vertical,
                    children: [
                      Text(
                        doctor.about,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Schedule(
                  title: doctor.available,
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppoinmentDoctor(
                          doctor: doctor,
                        ),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#1C6BA4'),
                    ),
                    child: const Center(
                      child: Text(
                        'Buat Janji Temu',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
