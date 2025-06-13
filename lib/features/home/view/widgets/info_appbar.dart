import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tasks/features/find_doctors/view/screen/find_doctors.dart';
import 'package:tasks/widgets/functions.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.appColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Hi Handwerker!',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              InkWell(
                onTap: (){
                  navigateTo(context, FindDoctorsScreen());
                },
                child: Text(
                  'Find Your Doctor',
                  style: titleStyle(color: AppColors.white),
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/images/doc3.jpg'),
          ),
        ],
      ),
    );
  }
}
