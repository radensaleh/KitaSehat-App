import 'package:flutter/material.dart';

import '../../widgets/list_fav_doctor.dart';
import '../../widgets/title_bar.dart';

class DoctorFavWeb extends StatelessWidget {
  final double widthSizedBox;

  const DoctorFavWeb({
    Key? key,
    required this.widthSizedBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
        left: 25,
        right: 25,
        bottom: 15,
      ),
      child: Center(
        child: SizedBox(
          width: widthSizedBox,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              TitleBarDoctor(
                title: 'Daftar Favorit',
              ),
              SizedBox(height: 35),
              DoctorsFav(),
            ],
          ),
        ),
      ),
    );
  }
}
