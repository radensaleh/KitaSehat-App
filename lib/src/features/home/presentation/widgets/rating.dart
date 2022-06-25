import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Rating extends StatelessWidget {
  final String rating;
  final String review;

  const Rating({
    Key? key,
    required this.rating,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: HexColor('#E09F1F'),
          size: 18.0,
        ),
        const SizedBox(width: 3),
        Text(
          rating,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          '($review ulasan)',
          style: const TextStyle(
            fontSize: 13,
            fontFamily: 'Nunito',
          ),
        )
      ],
    );
  }
}
