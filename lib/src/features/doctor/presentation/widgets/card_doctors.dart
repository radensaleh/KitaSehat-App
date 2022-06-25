import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/rating.dart';
import '../../data/models/doctors.dart';

class CardDoctor extends StatelessWidget {
  final DoctorModel doctor;
  const CardDoctor({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getItemCard(
      MediaQuery.of(context).size.width,
    );
  }

  Widget getItemCard(constrains) {
    if (constrains > 600) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset(doctor.photo),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    doctor.skill,
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Rating(
                    rating: doctor.rating.toStringAsFixed(1),
                    review: doctor.review.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset(doctor.photo),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    doctor.skill,
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Rating(
                    rating: doctor.rating.toStringAsFixed(1),
                    review: doctor.review.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
