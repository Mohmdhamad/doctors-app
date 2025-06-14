import 'package:flutter/material.dart';
import 'package:tasks/features/live/view/widget/comments_list.dart';
import 'package:tasks/features/live/view/widget/text_form.dart';
import 'package:tasks/widgets/default_appbar.dart';
import '../../../../models/doctors_model.dart';

class LiveBody extends StatelessWidget {
  const LiveBody(this.doctorsModel,{super.key});
  final DoctorsModel doctorsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:defaultAppBar(context,
          title: '',
          actions: [Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(doctorsModel.image),
          radius: 25,
        ),
      ),
      ]
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
          ),
        ],
      ),
    );
  }
}
