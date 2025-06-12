class LiveModel {
  String name;
  String comment;
  String image;

  LiveModel({
    required this.name,
    required this.comment,
    required this.image,
  });
}

List<LiveModel> users = [
  LiveModel(
    name: 'Jackson Junior',
    comment: 'Thanks for helping doctor',
    image: 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg',
  ),
  LiveModel(
    name: 'Omar Ahmed',
    comment: 'Thanks for helping doctor',
    image: 'https://images.pexels.com/photos/3785079/pexels-photo-3785079.jpeg',
  ),
  LiveModel(
    name: 'Hani Ahmed',
    comment: 'Thanks for helping doctor',
    image: 'https://images.pexels.com/photos/3777943/pexels-photo-3777943.jpeg',
  ),
  LiveModel(
    name: 'Mohamed Ahmed',
    comment: 'Thanks for helping doctor',
    image: 'https://images.pexels.com/photos/3778602/pexels-photo-3778602.jpeg',
  ),
  LiveModel(
    name: 'Samy Ahmed',
    comment: 'They treat immune system disorders',
    image: 'https://images.pexels.com/photos/3777946/pexels-photo-3777946.jpeg',
  ),

];
