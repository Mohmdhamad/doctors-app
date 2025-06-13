import 'package:flutter/material.dart';
import 'package:tasks/core/style/background.dart';
import 'package:tasks/features/find_doctors/view/widget/find_doc_list.dart';
import 'package:tasks/widgets/default_appbar.dart';

import '../../../../core/style/colors.dart';
import '../../../../widgets/default_text_form.dart';

class FindDocBody extends StatelessWidget {
  const FindDocBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      appBar: defaultAppBar(context,
      title: 'Find Doctors',
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              spacing: 15,
              children: [
                CustomTextForm(
                  prefixIcon: Icons.search,
                  isFilled: true,
                  hintText: 'Search ...',
                  color: AppColors.white,
                  radius: 10.0,
                  suffix: Icons.clear,
                ),
                FindDocList(),
              ],
            ),
          ),
        ),
    );
  }
}
