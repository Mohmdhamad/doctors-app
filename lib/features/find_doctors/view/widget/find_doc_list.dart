import 'package:flutter/material.dart';
import 'package:tasks/features/find_doctors/view/widget/find_doc_cards.dart';
import 'package:tasks/features/popular_doctors/view/widget/category_cards.dart';
import 'package:tasks/widgets/list.dart';
import '../../../../models/doctors_model.dart';

class FindDocList extends StatelessWidget {
  const FindDocList({super.key});

  @override
  Widget build(BuildContext context) {
    return verticalListBuilder(builderWidget: (index)=>findDocCardBuilder(doctors[index],context),
        count: doctors.length,
        );
  }
}
