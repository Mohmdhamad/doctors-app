import 'package:flutter/material.dart';
import 'package:tasks/features/popular_doctors/view/widget/category_cards.dart';
import 'package:tasks/widgets/list.dart';
import '../../../../models/doctors_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return verticalListBuilder(builderWidget: (index)=>categoryCardsBuilder(doctors[index]),
        count: doctors.length,
        );
  }
}
