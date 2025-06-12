import 'package:flutter/material.dart';
import 'package:tasks/features/live/view/widget/live_body.dart';

import '../../../../models/doctors_model.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen(this.doctorsModel,{super.key});
  final DoctorsModel doctorsModel;
  @override
  Widget build(BuildContext context) {
    return LiveBody(doctorsModel);
  }
}
