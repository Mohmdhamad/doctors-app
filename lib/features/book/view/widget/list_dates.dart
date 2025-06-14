import 'package:flutter/material.dart';
import 'package:tasks/features/book/view/models/time_slot.dart';
import 'package:tasks/features/book/view/widget/book_button.dart';
import 'package:tasks/widgets/list.dart';

class BookingList extends StatelessWidget {
  const BookingList({super.key});

  @override
  Widget build(BuildContext context) {
    return horizontalListBuilder(builderWidget: (index){
      return BookButton(model: dateSlotsList[index]);
    },
        count: dateSlotsList.length,
        height: 70.0);
  }
}
