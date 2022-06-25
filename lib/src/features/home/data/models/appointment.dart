import '../../../doctor/data/models/doctors.dart';

class AppointmentModel {
  String date;
  String day;
  String time;
  String diagnosis;
  String color1;
  String color2;
  DoctorModel doctor;

  AppointmentModel({
    required this.date,
    required this.day,
    required this.time,
    required this.diagnosis,
    required this.color1,
    required this.color2,
    required this.doctor,
  });

  void addAppoinment(date, day, time, diagnosis, doctor) {
    appointmentList.add(AppointmentModel(
      date: date,
      day: day,
      time: time,
      diagnosis: diagnosis,
      color1: color1,
      color2: color2,
      doctor: doctor,
    ));
  }
}

var appointmentList = [
  AppointmentModel(
    date: '12',
    day: 'Rabu',
    time: '09:30 Pagi',
    diagnosis:
        'DS : An. Q (16 tahun) sudah hampir 6 kali buang air besar dan perutnya terasa mulas. An. Q juga mengatakan bahwa fasesnya cair Ibu An. Q mengatakan 2 hari sebelumnya An. Q membeli jajanan di pinggir jalan sekolahnya yang terlihat kotor. \n\nDO : klien tampak lemas, TD : 90/70 mmHg, nadi 50 x/mnt, DS : An. Q (16 tahun) sudah hampir 6 kali buang air besar dan perutnya terasa mulas. An. Q juga mengatakan bahwa fasesnya cair Ibu An. Q mengatakan 2 hari sebelumnya An. Q membeli jajanan di pinggir jalan sekolahnya yang terlihat kotor. \n\nDO : klien tampak lemas, TD : 90/70 mmHg, nadi 50 x/mnt. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    color1: '#DCEDF9',
    color2: '#1C6BA4',
    doctor: doctorList[0],
  ),
  AppointmentModel(
    date: '13',
    day: 'Kamis',
    time: '12:30 Siang',
    diagnosis:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    color1: '#FAF0DB',
    color2: '#E09F1F',
    doctor: doctorList[1],
  ),
  AppointmentModel(
    date: '14',
    day: 'Jumat',
    time: '08:00 Pagi',
    diagnosis:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    color1: '#F2E3E9',
    color2: '#9D4C6C',
    doctor: doctorList[2],
  ),
  AppointmentModel(
    date: '15',
    day: 'Sabtu',
    time: '09:30 Pagi',
    diagnosis:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    color1: '#DCEDF9',
    color2: '#1C6BA4',
    doctor: doctorList[3],
  ),
  AppointmentModel(
    date: '16',
    day: 'Minggu',
    time: '12:30 Siang',
    diagnosis:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    color1: '#FAF0DB',
    color2: '#E09F1F',
    doctor: doctorList[4],
  ),
  AppointmentModel(
    date: '17',
    day: 'Senin',
    time: '08:00 Pagi',
    diagnosis:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    color1: '#F2E3E9',
    color2: '#9D4C6C',
    doctor: doctorList[5],
  ),
];
