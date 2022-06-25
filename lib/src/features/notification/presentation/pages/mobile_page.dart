import 'package:flutter/material.dart';

import '../../../doctor/presentation/widgets/title_bar.dart';
import '../widgets/card_notif.dart';

class NotificationPageMobile extends StatelessWidget {
  const NotificationPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleBarDoctor(title: 'Notifikasi'),
        SizedBox(height: 35),
        CardNotif(
          title: '3 Jadwal Periksa',
          content: 'Cek jadwal periksa anda hari ini',
          icon: 'assets/icons/date.png',
          color: '#1C6BA4',
        ),
        SizedBox(height: 20),
        CardNotif(
          title: '12 Pesan',
          content: 'Cek pesan masuk anda hari ini',
          icon: 'assets/icons/message.png',
          color: '#F73859',
        ),
        SizedBox(height: 20),
        CardNotif(
          title: 'Obat-obatan',
          content: 'Cek resep obat dari dokter',
          icon: 'assets/icons/medicine.png',
          color: '#E09F1F',
        ),
        SizedBox(height: 20),
        CardNotif(
          title: 'Update Vaksin',
          content: 'Cek jadwal vaksin anda',
          icon: 'assets/icons/vaccines.png',
          color: '#009DC7',
        ),
        SizedBox(height: 20),
        CardNotif(
          title: 'Update Aplikasi',
          content: 'Cek update aplikasi anda',
          icon: 'assets/icons/update.png',
          color: '#9D4C6C',
        ),
      ],
    );
  }
}
