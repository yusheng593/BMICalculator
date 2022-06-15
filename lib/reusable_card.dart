import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key? key, required this.backgroundColor, this.cardChild, this.onPress})
      : super(key: key);
  final Color backgroundColor;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
