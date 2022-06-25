import 'package:flutter/material.dart';

import '../../../doctor/data/models/doctors.dart';

class FavoriteDoctor extends StatefulWidget {
  final DoctorModel doctor;

  const FavoriteDoctor({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  State<FavoriteDoctor> createState() => _FavoriteDoctorState();
}

class _FavoriteDoctorState extends State<FavoriteDoctor> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (widget.doctor.favorite) {
            removeFav();
            widget.doctor.setFavorite(false);
          } else {
            addFav();
            widget.doctor.setFavorite(true);
          }
        });
      },
      icon: Icon(
        widget.doctor.favorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 28,
      ),
    );
  }
}
