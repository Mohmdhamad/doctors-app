import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/find_doctors/view/screen/find_doctors.dart';
import 'package:tasks/features/home/view/widgets/appbar.dart';
import 'package:tasks/features/home/view/widgets/cards_list.dart';
import 'package:tasks/features/home/view/widgets/doc_card_list.dart';
import 'package:tasks/features/home/view/widgets/info_appbar.dart';
import 'package:tasks/features/home/view/widgets/live_list.dart';
import 'package:tasks/features/home/view/widgets/majors_list.dart';
import 'package:tasks/features/popular_doctors/view/screen/popular_doctors.dart';
import 'package:tasks/models/doctors_model.dart';
import 'package:tasks/widgets/functions.dart';

class HomeBody extends StatelessWidget {
   HomeBody({super.key});
  DoctorsModel? model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15.0,
          children: [
            appBarHome(),
            Text(
              'Live Doctors',
              style: titleStyle(),
            ),
            LiveList(),
            MajorsList(),
            InkWell(
              onTap: (){
                navigateTo(context, PopularDoctorsScreen());
              },
              child: Row(
                children: [
                  Text('Popular Doctors',
                  style: titleStyle(),
                  ),
                  Spacer(),
                  Text('See all >',
                  style: hashStyle(),
                  ),
                ],
              ),
            ),
            CardsList(),
            Row(
                children: [
                  Text('Feature Doctors',
                    style: titleStyle(),
                  ),
                  Spacer(),
                  Text('See all >',
                    style: hashStyle(),
                  ),
                ],
              ),
            DocCardList(),
          ],
        ),
      ),
    );
  }
}
