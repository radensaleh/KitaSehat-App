import '../../../home/data/models/appointment.dart';

class DoctorModel {
  String name;
  double rating;
  String skill;
  int review;
  String experience;
  String about;
  String patiens;
  String available;
  String photo;
  bool favorite;

  int? totalRating = 0;

  DoctorModel({
    required this.name,
    required this.rating,
    required this.skill,
    required this.review,
    required this.experience,
    required this.about,
    required this.patiens,
    required this.available,
    required this.photo,
    required this.favorite,
  });

  void addAppoinment(date, day, time, diagnosis, doctor) {
    if (int.parse(date) % 2 == 0) {
      appointmentList.add(
        AppointmentModel(
          date: date,
          day: day,
          time: time,
          diagnosis: diagnosis,
          color1: '#DCEDF9',
          color2: '#1C6BA4',
          doctor: doctor,
        ),
      );
    } else {
      appointmentList.add(
        AppointmentModel(
          date: date,
          day: day,
          time: time,
          diagnosis: diagnosis,
          color1: '#FAF0DB',
          color2: '#E09F1F',
          doctor: doctor,
        ),
      );
    }
  }

  void countTotalRating(int rating) {
    totalRating = totalRating! + rating;
  }

  void addRating(int rating) {
    this.rating = (totalRating! + rating) / review;
    countTotalRating(rating);
  }

  void addReview(int review) {
    this.review = this.review + review;
  }

  void setFavorite(bool favorite) {
    this.favorite = favorite;
  }
}

int? totalFav = 0;

void addFav() {
  totalFav = totalFav! + 1;
}

void removeFav() {
  totalFav = totalFav! - 1;
}

var doctorList = [
  DoctorModel(
    name: 'Dr. Mim Akhter',
    rating: 0.0,
    skill: 'Spesialis Ahli Jantung',
    review: 0,
    experience: '10 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    patiens: '1000+',
    available: '6 Pagi - 9 Pagi',
    photo: 'assets/images/doctor1.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Jon Sina',
    rating: 0.0,
    skill: 'Spesialis Bedah',
    review: 0,
    experience: '7 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    patiens: '800+',
    available: '1 Siang - 3 Sore',
    photo: 'assets/images/doctor2.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Zim Khan',
    rating: 0.0,
    skill: 'Spesialis Kulit',
    review: 0,
    experience: '9 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '2000+',
    available: '8 Pagi - 11 Siang',
    photo: 'assets/images/doctor3.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Shahin Alam',
    rating: 0.0,
    skill: 'Spesialis Paru-Paru',
    review: 0,
    experience: '10 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '1000+',
    available: '6 Pagi - 9 Pagi',
    photo: 'assets/images/doctor1.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Virgo Tahir',
    rating: 0.0,
    skill: 'Spesialis Kelamin',
    review: 0,
    experience: '7 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '800+',
    available: '1 Siang - 3 Sore',
    photo: 'assets/images/doctor2.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Rhan Pharma',
    rating: 0.0,
    skill: 'Spesialis Ahli Mata',
    review: 0,
    experience: '9 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '2000+',
    available: '8 Pagi - 11 Siang',
    photo: 'assets/images/doctor3.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Mim Akhter (1)',
    rating: 0.0,
    skill: 'Spesialis Ahli Jantung',
    review: 0,
    experience: '10 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    patiens: '1000+',
    available: '6 Pagi - 9 Pagi',
    photo: 'assets/images/doctor1.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Jon Sina (1)',
    rating: 0.0,
    skill: 'Spesialis Bedah',
    review: 0,
    experience: '7 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    patiens: '800+',
    available: '1 Siang - 3 Sore',
    photo: 'assets/images/doctor2.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Zim Khan (1)',
    rating: 0.0,
    skill: 'Spesialis Kulit',
    review: 0,
    experience: '9 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '2000+',
    available: '8 Pagi - 11 Siang',
    photo: 'assets/images/doctor3.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Shahin Alam (1)',
    rating: 0.0,
    skill: 'Spesialis Paru-Paru',
    review: 0,
    experience: '10 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '1000+',
    available: '6 Pagi - 9 Pagi',
    photo: 'assets/images/doctor1.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Virgo Tahir (1)',
    rating: 0.0,
    skill: 'Spesialis Kelamin',
    review: 0,
    experience: '7 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '800+',
    available: '1 Siang - 3 Sore',
    photo: 'assets/images/doctor2.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Rhan Pharma (1)',
    rating: 0.0,
    skill: 'Spesialis Ahli Mata',
    review: 0,
    experience: '9 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '2000+',
    available: '8 Pagi - 11 Siang',
    photo: 'assets/images/doctor3.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Mim Akhter (2)',
    rating: 0.0,
    skill: 'Spesialis Ahli Jantung',
    review: 0,
    experience: '10 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    patiens: '1000+',
    available: '6 Pagi - 9 Pagi',
    photo: 'assets/images/doctor1.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Jon Sina (2)',
    rating: 0.0,
    skill: 'Spesialis Bedah',
    review: 0,
    experience: '7 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    patiens: '800+',
    available: '1 Siang - 3 Sore',
    photo: 'assets/images/doctor2.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Zim Khan (2)',
    rating: 0.0,
    skill: 'Spesialis Kulit',
    review: 0,
    experience: '9 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '2000+',
    available: '8 Pagi - 11 Siang',
    photo: 'assets/images/doctor3.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Shahin Alam (2)',
    rating: 0.0,
    skill: 'Spesialis Paru-Paru',
    review: 0,
    experience: '10 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '1000+',
    available: '6 Pagi - 9 Pagi',
    photo: 'assets/images/doctor1.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Virgo Tahir (2)',
    rating: 0.0,
    skill: 'Spesialis Kelamin',
    review: 0,
    experience: '7 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '800+',
    available: '1 Siang - 3 Sore',
    photo: 'assets/images/doctor2.png',
    favorite: false,
  ),
  DoctorModel(
    name: 'Dr. Rhan Pharma (2)',
    rating: 0.0,
    skill: 'Spesialis Ahli Mata',
    review: 0,
    experience: '9 thn',
    about:
        'MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital. MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital \n\nMBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital MBBS, Ph.D., Fellow, International College of Surgeons. Ex- Professor & Head of Departmen Department of Neurosurger Dhaka Medical College & Hospital',
    patiens: '2000+',
    available: '8 Pagi - 11 Siang',
    photo: 'assets/images/doctor3.png',
    favorite: false,
  ),
];
