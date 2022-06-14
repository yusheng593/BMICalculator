import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const customColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
                ),
              ),
              Expanded(
                child: ReusableCard(
                  backgroundColor: customColor,
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

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.backgroundColor, this.cardChild})
      : super(key: key);
  final Color backgroundColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(15.0),
      child: cardChild,
    );
  }
}
