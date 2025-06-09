class OnboardingModel {
  String image;
  String title;
  String description;
  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingModel> onboarding = [
  OnboardingModel(
    image: 'assets/images/onboarding1.jpg',
    title: 'Find Trusted Doctors',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding2.jpg',
    title: 'Choose Best Doctors',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding3.jpg',
    title: 'Easy  Appointments',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
];
