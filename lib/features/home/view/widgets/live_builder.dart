import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/live/view/screen/live_screen.dart';
import 'package:tasks/models/doctors_model.dart';
import 'package:tasks/widgets/functions.dart';
class LiveBuilder extends StatelessWidget {
  const LiveBuilder(this.doctorsModel,{super.key});
  final DoctorsModel doctorsModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
            context.pushNav(LiveScreen(doctorsModel));
      },
      child: Stack(
        alignment:Alignment.center ,
        children: [
          Container(
            width: 140,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  doctorsModel.image,
                ),
              ),
            ),
          ),
          Icon(
            Icons.play_circle_outline_outlined,
            color: AppColors.white,
            size: 41.0,
          ),
          Positioned(
            top: 10.0,
            right: 10.0,
            child: Container(
              padding:const EdgeInsets.symmetric(horizontal: 5.0) ,
              decoration: BoxDecoration(
                color: AppColors.red,
                borderRadius: BorderRadius.circular(5.0),
              ),
              height: 20.0,
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: AppColors.white,
                    size: 15.0,
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    'Live',
                    style: titleStyle(
                      color: AppColors.white,
                      textSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );;
  }
}

extension Nav on BuildContext{
  pushNav(Widget widget) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => widget));
  }
}