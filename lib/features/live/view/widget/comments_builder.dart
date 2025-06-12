
import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/models/live_model.dart';
import '../../../../core/style/text_style.dart';

Widget commentsBuilder(
    LiveModel model
    )=>ListTile(
  leading:CircleAvatar(
    radius: 30.0,
    backgroundImage:NetworkImage(
      model.image,
    ),
  ),
  title: Text(
    model.name,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style:titleStyle(textSize: 17.0,color: AppColors.blueGrey),
  ),
  subtitle: Text(
    model.comment,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: hashStyle(color: AppColors.grey),
  ),
);
