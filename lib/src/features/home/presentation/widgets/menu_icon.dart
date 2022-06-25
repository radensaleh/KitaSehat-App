import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MenuIcon extends StatelessWidget {
  final String icon;
  final String title;
  final String iconColor;

  const MenuIcon({
    Key? key,
    required this.icon,
    required this.title,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon),
        const SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: HexColor(iconColor),
          ),
        ),
      ],
    );
  }
}
