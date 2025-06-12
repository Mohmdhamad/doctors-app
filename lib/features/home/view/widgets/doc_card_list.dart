import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tasks/widgets/list.dart';

import '../../../../models/doctors_model.dart';
import 'doctor_card.dart';

class DocCardList extends StatelessWidget {
  const DocCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return horizontalListBuilder(builderWidget: (index)=>docCardBuilder(doctors[index]), count: doctors.length,
        height: 155);
  }
}
