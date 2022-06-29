import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kAppBarTitle = 'BMI 計算機';
const kMaleLabel = '男';
const kFemaleLabel = '女';
const kUserHeightLabel = '身高';
const kCentimeterLabel = '公分';
const kBottomContainerText = '開始計算';
const kBottomButtonText = '返回計算';
const kBottomContainerHeight = 80.0;
const kSliderMax = 200.0;
const kSliderMin = 100.0;
const kDefaultUserHeight = 160;
const kEnabledThumbRadius = 15.0;
const kOverlayRadius = 30.0;
const kMaleIcon = FontAwesomeIcons.mars;
const kFemaleIcon = FontAwesomeIcons.venus;
const kSliderThemeOverlayColor = Color(0x69795548);
const kActiveCardColor = Color(0xFF607D8B);
const kInactiveCardColor = Color(0xFF445A64);
const kBottomContainerColor = Color(0xFF795548);
const kSliderActiveColor = Color(0xFFCFD8DC);
const kSliderInactiveColor = Color(0xFF8D8E98);
const kLargeButtonTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0);
const kTittleTextStyle = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);
const kResultTextStyle = TextStyle(
    color: Color(0xFF24D876), fontSize: 22.0, fontWeight: FontWeight.bold);
const kBMITextStyle = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);
const kBodyTextStyle = TextStyle(fontSize: 22.0);

const kLabelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFFBDBDBD),
);
const kNumberTextStyle = TextStyle(fontSize: 35.0, fontWeight: FontWeight.w900);
