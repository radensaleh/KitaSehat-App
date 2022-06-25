import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardNotif extends StatelessWidget {
  final String title;
  final String content;
  final String icon;
  final String color;

  const CardNotif({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: HexColor('#BECADA'),
            width: 1,
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor(color).withOpacity(0.1),
            ),
            child: Image.asset(icon),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                content,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 13,
                  color: HexColor('#7B8D9E'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
