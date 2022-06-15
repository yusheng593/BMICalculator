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
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  //1 = male, 2 = female
  void updateColor(GenderType gender) {
    //gender = male
    if (gender == GenderType.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = activeCardColor;
      }
    }
    //gender = female
    if (gender == GenderType.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
        maleCardColor = activeCardColor;
      }
    }
  }

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(GenderType.male);
                    });
                  },
                  child: ReusableCard(
                    backgroundColor: maleCardColor,
                    cardChild: IconContent(
                      icon: maleIcon,
                      label: maleLabel,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(GenderType.female);
                    });
                  },
                  child: ReusableCard(
                    backgroundColor: femaleCardColor,
                    cardChild: IconContent(
                      icon: femaleIcon,
                      label: femaleLabel,
                    ),
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
