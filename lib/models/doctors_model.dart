class DoctorsModel{
  String image;
  String name;
  String major;
  String salary;
  DoctorsModel({required this.image,required this.name, required this.major,
  required this.salary});
}


List <DoctorsModel> doctors=[
  // DoctorsModel(image: 'assets/images/doc1.png', name: 'Dr. Fillerup Grab', major: 'medicine specialist',),
  DoctorsModel(image: 'assets/images/doc2.jpg', name: 'Dr. Pediatrician', major: 'Specialist Cardiologist',salary: '22.00/hours'),
  DoctorsModel(image: 'assets/images/doc3.jpg', name: 'Dr. Blessing', major: 'Dentist Specialist',salary: '21.00/hours'),
  DoctorsModel(image: 'assets/images/doc4.jpg', name: 'Dr. Truluck nik', major: 'medicine specialist',salary: '23.00/hours'),
  DoctorsModel(image: 'assets/images/doc5.jpg', name: 'Dr. Tranquilli', major: 'Patheology specialist',salary: '29.00/hours'),
  DoctorsModel(image: 'assets/images/doc6.jpg', name: 'Dr. Fillerup Grab', major: 'medicine specialist',salary: '27.00/hours'),
  DoctorsModel(image: 'assets/images/doc7.jpg', name: 'Dr. Shouey', major: 'Specalist Cardiology',salary: '25.00/hours'),
];