import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_content.dart';

const bottomContainerHeight = 80.0;
const customColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const maleIcon = FontAwesomeIcons.mars;
const femaleIcon = FontAwesomeIcons.venus;
const maleLabel = '男';
const femaleLabel = '女';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
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
            children: const [
              Expanded(
                child: ReusableCard(
                  backgroundColor: customColor,
                  cardChild: IconContent(
                    icon: maleIcon,
                    label: maleLabel,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  backgroundColor: customColor,
                  cardChild: IconContent(
                    icon: femaleIcon,
                    label: femaleLabel,
                  ),
                ),
              ),
            ],
          )),
          const Expanded(
            child: ReusableCard(
              backgroundColor: customColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    backgroundColor: customColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: customColor,
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
