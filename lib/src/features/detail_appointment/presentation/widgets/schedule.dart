import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Schedule extends StatelessWidget {
  final String title;
  const Schedule({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: HexColor('#D7DEEA'),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: HexColor('#DCEDF9'),
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/icons/clock.png'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jadwal',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: HexColor('#7B8D9E'),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
