import 'package:flutter/material.dart';
import 'package:todoapp/core/constant/color_manager.dart';

class Listofcontexts {
  static const List<String> clocks = [
    '07.00',
    '08.00',
    '09.00',
    '10.00',
    '11.00'
  ];
  static  List<String> names = [
    'Send Project File',
    'Meeting with clients',
    'email client',
    'Morning Yoga',
    'Go jogging with Chiston'
  ];
  static  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.purple,
    Colors.pink,
  ];

  static const List<int> radioValue = [1, 2, 3, 4, 5];

  static const List<String> nameOfprojects = [
    'Personal',
    'Work',
    'Meeting',
    'Shopping'
  ];

  static const List<String> taskOfprojects = [
    '24 Task',
    '44 Task',
    '45 Task',
    '54 Task'
  ];

  static  List<Color> colorOFcircle =[
    ColorManager.gridCircleColor,
    ColorManager.gridCircleColorcase,
    ColorManager.gridCircleColorofmeeting,
    ColorManager.gricCircleColorofshoping,
  ];

  static const List<String> icons =[
    "assets/icons/user.svg",
    "assets/icons/briefcase.svg",
    "assets/icons/presentation.svg",
    "assets/icons/basket.svg"
  ];
}
