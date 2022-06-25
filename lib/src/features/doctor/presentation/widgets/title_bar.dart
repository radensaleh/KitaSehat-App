import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TitleBarDoctor extends StatelessWidget {
  final String title;

  const TitleBarDoctor({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Nunito',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        Opacity(
          opacity: 0.0,
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
      ],
    );
  }
}
