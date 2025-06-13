class DoctorsModel {
  String image;
  String name;
  String major;
  String salary;
  bool isFav;
  String rate;
  String views;
  String exYears;
  String percent;
  String patientStories;
  String nextAvailable;
  DoctorsModel({
    required this.image,
    required this.name,
    required this.major,
    required this.salary,
    required this.isFav,
    required this.rate,
    required this.views,
    required this.exYears,
    required this.percent,
    required this.patientStories,
    required this.nextAvailable,
  });
}

List<DoctorsModel> doctors = [
  // DoctorsModel(image: 'assets/images/doc1.png', name: 'Dr. Fillerup Grab', major: 'medicine specialist',),
  DoctorsModel(
    image: 'assets/images/doc2.jpg',
    name: 'Dr. Pediatrician',
    major: 'Specialist Cardiologist',
    salary: '22.00/hours',
    isFav: true,
    rate: '3.7',
    views: '2358',
    exYears: '5 Years experience',
    patientStories: '69 patient stories',
    percent: '87 %',
    nextAvailable: '10:00 AM tomorrow',
  ),
  DoctorsModel(
    image: 'assets/images/doc3.jpg',
    name: 'Dr. Blessing',
    major: 'Dentist Specialist',
    salary: '21.00/hours',
    isFav: false,
    rate: '2.7',
      views: '2468',
    exYears: '7 Years experience',
    patientStories: '54 patient stories',
    percent: '78 %',
    nextAvailable: '12:00 PM tomorrow',

  ),
  DoctorsModel(
    image: 'assets/images/doc4.jpg',
    name: 'Dr. Truluck nik',
    major: 'medicine specialist',
    salary: '23.00/hours',
    isFav: true,
    rate: '3.1',
      views: '2478',
    exYears: '9 Years experience',
    patientStories: '69 patient stories',
    percent: '75 %',
    nextAvailable: '01:00 PM tomorrow',

  ),
  DoctorsModel(
    image: 'assets/images/doc5.jpg',
    name: 'Dr. Tranquilli',
    major: 'Patheology specialist',
    salary: '29.00/hours',
    isFav: false,
    rate: '3.5',
      views: '3256',
    exYears: '6 Years experience',
    patientStories: '80 patient stories',
    percent: '91 %',
    nextAvailable: '03:00 PM tomorrow',


  ),
  DoctorsModel(
    image: 'assets/images/doc6.jpg',
    name: 'Dr. Fillerup Grab',
    major: 'medicine specialist',
    salary: '27.00/hours',
    isFav: true,
    rate: '3.4',
      views: '3258',
    exYears: '9 Years experience',
    nextAvailable: '02:00 PM tomorrow',

    patientStories: '47 patient stories',
    percent: '53 %',

  ),
  DoctorsModel(
    image: 'assets/images/doc7.jpg',
    name: 'Dr. Shouey',
    major: 'Specalist Cardiology',
    salary: '25.00/hours',
    isFav: false,
    rate: '3.2',
      views: '2789',
    exYears: '6 Years experience',
    patientStories: '78 patient stories',
    percent: '85 %',
    nextAvailable: '10:00 Am tomorrow',

  ),
];
