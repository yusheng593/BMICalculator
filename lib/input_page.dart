import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
const maleIcon = FontAwesomeIcons.mars;
const femaleIcon = FontAwesomeIcons.venus;
const maleLabel = '男';
const femaleLabel = '女';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  GenderType? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.male;
                    });
                  },
                  backgroundColor: selectedGender == GenderType.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: const IconContent(
                    icon: maleIcon,
                    label: maleLabel,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  backgroundColor: selectedGender == GenderType.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: const IconContent(
                    icon: femaleIcon,
                    label: femaleLabel,
                  ),
                ),
              ),
            ],
          )),
          const Expanded(
            child: ReusableCard(
              backgroundColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    backgroundColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
