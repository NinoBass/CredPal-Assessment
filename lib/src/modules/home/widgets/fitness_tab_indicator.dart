import 'package:credpal/src/core/values/colors.dart';
import 'package:flutter/material.dart';

class FitnessTabIndicator extends StatelessWidget {
  const FitnessTabIndicator({Key? key, this.color, this.width})
      : super(key: key);

  final Color? color;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: width ?? 24,
        height: 4,
        decoration: BoxDecoration(
          color: color ?? lightBlue,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
