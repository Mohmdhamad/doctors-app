import 'dart:ui';

import 'package:tasks/core/style/colors.dart';

class MajorModel{
  String image;
  Color color;
  MajorModel({required this.image,required this.color});
}

List<MajorModel> major=[
  MajorModel(image: 'assets/icons/teeth.svg', color: AppColors.deepPurple),
  MajorModel(image: 'assets/icons/heart.svg', color: AppColors.teal),
  MajorModel(image: 'assets/icons/eye.svg', color: AppColors.orange),
  MajorModel(image: 'assets/icons/body.svg', color: AppColors.redAccent),

];