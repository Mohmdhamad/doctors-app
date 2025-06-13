import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tasks/features/home/view/widgets/cards_builder.dart';
import 'package:tasks/widgets/list.dart';

import '../../../../models/doctors_model.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});
  @override
  Widget build(BuildContext context) {
    return horizontalListBuilder(
        count: doctors.length,
        builderWidget: (index)=>cardsBuilder(doctors[index]),
        height: 250,
    );
  }
}
