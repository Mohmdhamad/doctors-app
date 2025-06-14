import 'package:flutter/material.dart';
import 'package:tasks/features/home/view/widgets/cards_list.dart';
import 'package:tasks/features/popular_doctors/view/widget/category_list.dart';
import 'package:tasks/widgets/default_appbar.dart';
import '../../../../core/style/background.dart';
import '../../../../core/style/text_style.dart';
class PopularDoctorsBody extends StatelessWidget {
  const PopularDoctorsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      appBar: defaultAppBar(context,
        title: '',
        actions: [
          Icon(Icons.search_sharp),
          SizedBox(width: 20.0),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10.0,
            children: [
              Row(
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
              CardsList(),
              Text('Category',
                style: titleStyle(),
              ),
              CategoryList(),
            ],
          ),
        ),
      ),
    ) ;
  }
}
