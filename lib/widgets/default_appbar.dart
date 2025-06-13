import 'package:flutter/material.dart';
import 'package:tasks/core/style/text_style.dart';
import 'default_back_button.dart';

AppBar defaultAppBar(context,{List<Widget>?actions,String? title})=>AppBar(
  title: Text(title!,
  style: bodyStyle(),
  ),
  elevation: 0.0,
  backgroundColor: Colors.transparent,
  leadingWidth: 60.0,
  leading:defaultBackButton(context),
  actions: actions,
);