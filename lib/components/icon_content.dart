import 'package:flutter/material.dart';
import '../constants.dart';

const sizedBoxHeight = 15.0;
const iconSize = 60.0;

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
