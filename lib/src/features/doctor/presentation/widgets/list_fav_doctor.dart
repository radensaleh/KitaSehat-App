import 'package:flutter/material.dart';
import 'card_doctors.dart';

import '../../../detail_doctor/presentation/pages/detail_doctor.dart';
import '../../data/models/doctors.dart';

class DoctorsFav extends StatefulWidget {
  const DoctorsFav({Key? key}) : super(key: key);

  @override
  State<DoctorsFav> createState() => _DoctorsFavState();
}

class _DoctorsFavState extends State<DoctorsFav> {
  var dataListFav = [];

  @override
  Widget build(BuildContext context) {
    setState(() {
      dataListFav = [];
      doctorList.asMap().forEach((key, value) {
        if (value.favorite) {
          dataListFav.add(value);
        }
      });
    });
    return getWidget();
  }

  Widget getWidget() {
    if (totalFav == 0) {
      return SizedBox(
        height: MediaQuery.of(context).size.height - 200,
        child: Center(
          child: Image.asset(
            'assets/images/no_data.jpg',
          ),
        ),
      );
    } else {
      return SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 164,
          child: getListFav(),
        ),
      );
    }
  }

  Widget getListFav() {
    var size = MediaQuery.of(context).size.width;

    if (size > 800 && size <= 1000) {
      return getListGridFav(2);
    } else if (size > 1000) {
      return getListGridFav(3);
    } else {
      return ListView.builder(
        padding: const EdgeInsets.only(top: 0),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final DoctorModel doctor = doctorList[index];

          onGoBack(dynamic value) {
            setState(() {});
          }

          if (doctorList[index].favorite) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailDoctor(
                      doctor: doctor,
                    ),
                  ),
                ).then(onGoBack);
              },
              highlightColor: Colors.transparent,
              borderRadius: BorderRadius.circular(25),
              child: CardDoctor(
                doctor: doctor,
              ),
            );
          } else {
            return const SizedBox(width: 0);
          }
        },
        itemCount: doctorList.length,
      );
    }
  }

  Widget getListGridFav(gridCount) {
    return GridView.count(
      crossAxisCount: gridCount,
      childAspectRatio: 3,
      controller: ScrollController(keepScrollOffset: false),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: dataListFav.map((doctor) {
        onGoBack(dynamic value) {
          setState(() {
            dataListFav = [];
            doctorList.asMap().forEach((key, value) {
              if (value.favorite) {
                dataListFav.add(value);
              }
            });
          });
        }

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailDoctor(
                  doctor: doctor,
                ),
              ),
            ).then(onGoBack);
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
