import 'package:flutter/material.dart';
import 'package:tasks/core/style/background.dart';
import 'package:tasks/features/book/view/widget/book_card.dart';
import 'package:tasks/features/book/view/widget/list_dates.dart';
import 'package:tasks/models/doctors_model.dart';
import 'package:tasks/widgets/default_appbar.dart';

class BookScreenBody extends StatefulWidget {
  const BookScreenBody({super.key});

  @override
  State<BookScreenBody> createState() => _BookScreenBodyState();
}

class _BookScreenBodyState extends State<BookScreenBody> {
  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
        appBar: defaultAppBar(context,
        title: 'Select Time',
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              bookCardBuilder(doctors[1]),
              BookingList(),
            ],
          ),
        ),);
  }
}
