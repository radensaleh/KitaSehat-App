import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../detail_doctor/presentation/widgets/card_doctor.dart';
import '../../../doctor/data/models/doctors.dart';
import '../../../home/presentation/pages/home_page.dart';

class AppointmentDoctorMobile extends StatefulWidget {
  final DoctorModel doctor;

  const AppointmentDoctorMobile({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  State<AppointmentDoctorMobile> createState() =>
      _AppointmentDoctorMobileState();
}

class _AppointmentDoctorMobileState extends State<AppointmentDoctorMobile> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _dayController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _diagnosisController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
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
                              'Janji Temu Doktor',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Container(
                                padding: const EdgeInsets.all(5),
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
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        CardDoctor(
                          photo: widget.doctor.photo,
                          name: widget.doctor.name,
                          skill: widget.doctor.skill,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Container(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Form Janji Temu',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: HexColor('#253141'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: TextFormField(
                          controller: _dateController,
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masukkan Tanggal',
                            hintStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.calendar_month,
                              size: 30,
                            ),
                            labelText: "Tanggal (cnth. 10)",
                            labelStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          validator: (val) {
                            bool isNumeric(String s) {
                              return double.tryParse(s) != null;
                            }

                            if (val!.isEmpty) {
                              return "Tanggal tidak boleh kosong";
                            } else {
                              if (!isNumeric(val)) {
                                return 'Mohon masukan angka';
                              }
                              if (int.parse(val) > 31 || int.parse(val) < 1) {
                                return 'Mohon masukan tanggal 1-31';
                              }
                              return null;
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: TextFormField(
                          controller: _dayController,
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masukkan Hari',
                            hintStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.calendar_today,
                              size: 30,
                            ),
                            labelText: "Hari (cnth. Senin)",
                            labelStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Hari tidak boleh kosong";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: TextFormField(
                          controller: _timeController,
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masukkan Jam Periksa',
                            hintStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.timer,
                              size: 30,
                            ),
                            labelText: "Jam Periksa (cnth. 08:00 Pagi)",
                            labelStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Jam periksa tidak boleh kosong";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: TextFormField(
                          controller: _diagnosisController,
                          style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masukkan Keluhan',
                            hintStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.medical_services,
                              size: 30,
                            ),
                            labelText: "Keluhan (cnth. Perut Sakit, dll)",
                            labelStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Keluhan tidak boleh kosong";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 25),
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            widget.doctor.addAppoinment(
                              _dateController.text,
                              _dayController.text,
                              _timeController.text,
                              _diagnosisController.text,
                              widget.doctor,
                            );
                            const snackBar = SnackBar(
                              content: Text('Jadwal Berhasil Dibuat'),
                            );

                            // ignore: deprecated_member_use
                            // _scaffoldKey.currentState!.showSnackBar(snackBar);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          }
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
                              'Kirim Form',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
