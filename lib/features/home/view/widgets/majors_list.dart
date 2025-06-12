import 'package:flutter/material.dart';
import 'package:tasks/features/home/view/widgets/majors_builder.dart';
import 'package:tasks/models/major_model.dart';
import 'package:tasks/widgets/list.dart';

class MajorsList extends StatelessWidget {
  const MajorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return horizontalListBuilder(builderWidget: (index)=>majorsBuilder(major[index]),
        count: major.length,
        height: 110);
  }
}
