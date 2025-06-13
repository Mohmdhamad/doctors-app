import 'package:flutter/material.dart';
import 'default_back_button.dart';

AppBar defaultAppBar(context,{List<Widget>?actions})=>AppBar(
  elevation: 0.0,
  backgroundColor: Colors.transparent,
  leadingWidth: 60.0,
  leading:defaultBackButton(context),
  actions: actions,
);