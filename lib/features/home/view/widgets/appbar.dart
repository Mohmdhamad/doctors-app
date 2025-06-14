
import 'package:flutter/material.dart';
import 'package:tasks/widgets/default_text_form.dart';

import '../../../../core/style/colors.dart';
import '../../../home/view/widgets/info_appbar.dart';

PreferredSizeWidget appBarHome (){
  return PreferredSize(
    preferredSize: Size.fromHeight(200),
    child: SizedBox(
      height: 160.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(alignment: Alignment.topCenter, child: CustomHomeAppBar()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTextForm(
              prefixIcon: Icons.search,
              isFilled: true,
              hintText: 'Search ...',
              color: AppColors.white,
              radius: 15.0,
              suffix: Icons.clear,
            ),
          ),
        ],
      ),
    ),
  );
}



