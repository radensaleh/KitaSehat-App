import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../data/models/appointment.dart';
import '../../../detail_appointment/presentation/pages/detail_appointment.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final AppointmentModel appointment = appointmentList[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailAppointment(
                    appointment: appointment,
                  ),
                ),
              );
            },
            borderRadius: BorderRadius.circular(25),
            child: Card(
              color: HexColor(appointment.color1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      color: HexColor(appointment.color2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 16.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              appointment.date,
                              style: const TextStyle(
                                fontSize: 22,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              appointment.day,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 26.0,
                      bottom: 26.0,
                      right: 26.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appointment.time,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            color: HexColor(appointment.color2),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          appointment.doctor.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            color: HexColor(appointment.color2),
                          ),
                        ),
                        const SizedBox(height: 3),
                        SizedBox(
                          width: 150,
                          child: Text(
                            appointment.diagnosis,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              color: HexColor(appointment.color2),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: appointmentList.length,
      ),
    );
  }
}
