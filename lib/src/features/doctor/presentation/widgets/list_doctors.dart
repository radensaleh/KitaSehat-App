import 'package:flutter/material.dart';
import 'card_doctors.dart';

import '../../../detail_doctor/presentation/pages/detail_doctor.dart';
import '../../data/models/doctors.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 340,
        child: getListDoctor(
          MediaQuery.of(context).size.width,
          context,
        ),
      ),
    );
  }

  Widget getListDoctor(constrains, context) {
    if (constrains > 800 && constrains <= 1000) {
      return const DoctorGrid(
        gridCount: 2,
      );
    } else if (constrains > 1000) {
      return const DoctorGrid(
        gridCount: 3,
      );
    } else {
      return ListView.builder(
        padding: const EdgeInsets.only(top: 0),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final DoctorModel doctor = doctorList[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailDoctor(
                    doctor: doctor,
                  ),
                ),
              );
            },
            highlightColor: Colors.transparent,
            borderRadius: BorderRadius.circular(25),
            child: CardDoctor(
              doctor: doctor,
            ),
          );
        },
        itemCount: doctorList.length,
      );
    }
  }
}

class DoctorGrid extends StatelessWidget {
  final int gridCount;
  const DoctorGrid({
    Key? key,
    required this.gridCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: gridCount,
      childAspectRatio: 3,
      controller: ScrollController(keepScrollOffset: false),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: doctorList.map((doctor) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailDoctor(
                  doctor: doctor,
                ),
              ),
            );
          },
          highlightColor: Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          child: CardDoctor(
            doctor: doctor,
          ),
        );
      }).toList(),
    );
  }
}
