import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rating_dialog/rating_dialog.dart';

import '../../../detail_appointment/presentation/widgets/schedule.dart';
import '../../../detail_doctor/presentation/pages/detail_doctor.dart';
import '../../../home/data/models/appointment.dart';
import '../../../home/presentation/widgets/rating.dart';

class DetailAppointmentWeb extends StatefulWidget {
  final AppointmentModel appointment;
  final double widthSizedBox;

  const DetailAppointmentWeb({
    Key? key,
    required this.appointment,
    required this.widthSizedBox,
  }) : super(key: key);

  @override
  State<DetailAppointmentWeb> createState() => _DetailAppointmentWebState();
}

class _DetailAppointmentWebState extends State<DetailAppointmentWeb> {
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
        child: Center(
          child: SizedBox(
            width: widget.widthSizedBox,
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
                        ),
                      ),
                    ),
                    const Text(
                      'Detail Jadwal',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DetailDoctor(
                                doctor: widget.appointment.doctor);
                          },
                        ));
                      },
                      borderRadius: BorderRadius.circular(15),
                      highlightColor: HexColor('#DCEDF9'),
                      splashColor: HexColor('#DCEDF9'),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          Icons.info,
                          size: 25,
                          color: HexColor('#1C6BA4'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Center(
                  child: Image.asset(widget.appointment.doctor.photo),
                ),
                const SizedBox(height: 15),
                Center(
                  child: Text(
                    widget.appointment.doctor.name,
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: Text(
                    widget.appointment.doctor.skill,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      color: HexColor('#7B8D9E'),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Rating(
                  rating: widget.appointment.doctor.rating.toStringAsFixed(1),
                  review: widget.appointment.doctor.review.toString(),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Diagnosa Pasien',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 570,
                  child: ListView(
                    padding: const EdgeInsets.only(top: 0),
                    scrollDirection: Axis.vertical,
                    children: [
                      Text(
                        widget.appointment.diagnosis,
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
                  title:
                      '${widget.appointment.day} ${widget.appointment.date}, ${widget.appointment.time}',
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return RatingDialog(
                          title: const Text(
                            'Ulasan Doktor',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          message: const Text(
                            'Ayo berikan ulasan doktor anda',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                            ),
                          ),
                          enableComment: false,
                          onCancelled: () {},
                          onSubmitted: (res) {
                            setState(() {
                              widget.appointment.doctor.addReview(1);
                              widget.appointment.doctor
                                  .addRating(res.rating.toInt());

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Berhasil Memberi Ulasan Bintang ${res.rating.toInt()} kepada ${widget.appointment.doctor.name}",
                                  ),
                                ),
                              );
                            });
                          },
                          submitButtonText: 'Kirim',
                        );
                      },
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
                        'Beri Ulasan',
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
      ),
    );
  }
}
