import 'package:flutter/material.dart';
import 'rating.dart';

import '../../data/models/pharmacy.dart';

class PharmacyNearby extends StatelessWidget {
  const PharmacyNearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final PharmacyModel pharmacy = pharmacyList[index];

          return InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(pharmacy.image),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pharmacy.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Jarak ${pharmacy.range}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Nunito',
                          ),
                        ),
                        const SizedBox(height: 5),
                        Rating(
                          rating: pharmacy.rating,
                          review: pharmacy.review,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: pharmacyList.length,
      ),
    );
  }
}
