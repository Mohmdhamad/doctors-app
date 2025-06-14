import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/book/view/models/time_slot.dart';
class BookButton extends StatelessWidget {
   BookButton({super.key,required this.model});
  DateSlots model;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Column(
        children: [
          Text(model.date,
            style: bodyStyle(
                textSize: 14.0,
            ),
          ),
          Text('${model.totalAvailableSlots} slots available', )
        ],
      ),
    );
  }
}




