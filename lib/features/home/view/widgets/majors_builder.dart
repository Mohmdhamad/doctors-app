import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/models/major_model.dart';

Widget majorsBuilder(MajorModel model) => Container(
  width: 100.0,
  height: 100.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(7),
    color: model.color,
  ),
  child: SvgPicture.asset(model.image, fit: BoxFit.scaleDown),
);

