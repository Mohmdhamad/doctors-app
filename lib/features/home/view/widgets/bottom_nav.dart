import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/core/style/colors.dart';

int currentIndex = 0;

Widget bottomNav() => BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/book.svg'),
      label: '',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
  ],
  currentIndex: currentIndex,
  type: BottomNavigationBarType.fixed,
  iconSize: 27,
  unselectedItemColor: AppColors.grey,
  selectedItemColor: AppColors.teal,
);
