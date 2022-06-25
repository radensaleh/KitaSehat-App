import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardBloodWeight extends StatelessWidget {
  final String title;
  final String content;
  final String icon;
  final String color;

  const CardBloodWeight({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        color: HexColor(color),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(icon),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          getWeight(),
        ],
      ),
    );
  }

  Widget getWeight() {
    if (title == 'Berat Badan') {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            content,
            style: const TextStyle(
              fontFamily: 'Nunito',
              fontSize: 38,
            ),
          ),
          const SizedBox(width: 5),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'kg',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
    } else {
      return Text(
        content,
        style: const TextStyle(
          fontFamily: 'Nunito',
          fontSize: 38,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}
