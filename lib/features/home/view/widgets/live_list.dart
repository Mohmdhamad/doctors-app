import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/home/view/widgets/live_builder.dart';
import 'package:tasks/models/doctors_model.dart';
import 'package:tasks/widgets/list.dart';

class LiveList extends StatelessWidget {
   LiveList({super.key});
  DoctorsModel? model;
  @override
  Widget build(BuildContext context) {
    return horizontalListBuilder(builderWidget: (index)=>LiveBuilder(doctors[index],), count: doctors.length,
        height: 160,);
  }
}
