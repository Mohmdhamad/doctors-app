import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/features/live/view/widget/comments_list.dart';
import 'package:tasks/features/live/view/widget/live_body.dart';
import 'package:tasks/features/live/view/widget/text_form.dart';

import '../../../../models/doctors_model.dart';

class LiveBody extends StatelessWidget {
  const LiveBody(this.doctorsModel,{super.key});
  final DoctorsModel doctorsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leadingWidth: 60.0,
        leading:Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,vertical:7.0,
          ),
          child: FloatingActionButton(
            onPressed: (){
              Navigator.pop(context);
            },
            mini: true,
            backgroundColor: AppColors.white,
            foregroundColor: AppColors.black,
            child: Icon(Icons.arrow_back_ios),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(doctorsModel.image),
              radius: 25,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(doctorsModel.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Expanded(child: CommentsList()),
                TextForm(),
              ],
            ),
          ),        ],
      ),
    );
  }
}
