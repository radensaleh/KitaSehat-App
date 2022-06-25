import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../doctor/presentation/widgets/title_bar.dart';
import '../widgets/card_blood_weight.dart';
import '../widgets/list_report.dart';

class ReportPageWeb extends StatelessWidget {
  final double widthSizedBox;
  const ReportPageWeb({
    Key? key,
    required this.widthSizedBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widthSizedBox,
        child: getWidget(
          MediaQuery.of(context).size.width,
        ),
      ),
    );
  }

  Widget getWidget(constrains) {
    if (constrains >= 1015) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleBarDoctor(
            title: 'Laporan Sehat' + constrains.toString(),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    color: HexColor('#DCEDF9'),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Detak Jantung',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                '96',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 48,
                                ),
                              ),
                              SizedBox(width: 5),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'bpm',
                                  style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Image.asset('assets/icons/health_rate.png'),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 15),
              const Expanded(
                child: CardBloodWeight(
                  title: 'Gol. Darah',
                  content: 'A+',
                  icon: 'assets/icons/blood.png',
                  color: '#F5E1E9',
                ),
              ),
              const SizedBox(width: 15),
              const Expanded(
                child: CardBloodWeight(
                  title: 'Berat Badan',
                  content: '80',
                  icon: 'assets/icons/weight.png',
                  color: '#FAF0DB',
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            'Laporan Terakhir',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const LastReports(),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleBarDoctor(
            title: 'Laporan Sehat' + constrains.toString(),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              color: HexColor('#DCEDF9'),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Detak Jantung',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '96',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 48,
                          ),
                        ),
                        SizedBox(width: 5),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'bpm',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                Image.asset('assets/icons/health_rate.png'),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: const [
              Expanded(
                child: CardBloodWeight(
                  title: 'Gol. Darah',
                  content: 'A+',
                  icon: 'assets/icons/blood.png',
                  color: '#F5E1E9',
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: CardBloodWeight(
                  title: 'Berat Badan',
                  content: '80',
                  icon: 'assets/icons/weight.png',
                  color: '#FAF0DB',
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            'Laporan Terakhir',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const LastReports(),
        ],
      );
    }
  }
}
