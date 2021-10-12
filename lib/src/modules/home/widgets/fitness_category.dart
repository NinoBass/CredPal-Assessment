import 'package:credpal/src/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'spacing.dart';

class FitnessCategory extends StatelessWidget {
  const FitnessCategory({
    required this.icon,
    required this.category,
    required this.value,
    required this.unit,
    required this.baseColor,
    required this.iconColor,
  });

  final String category;
  final String value;
  final String unit;
  final IconData icon;
  final Color baseColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: baseColor,
          ),
          child: Icon(
            icon,
            size: 18,
            color: iconColor,
          ),
        ),
        const VerticalSpace(size: 20),
        Text.rich(
          TextSpan(
            text: value,
            style: Get.textTheme.headline6!.copyWith(
              color: white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
            children: [
              TextSpan(
                text: ' $unit',
                style: Get.textTheme.caption!.copyWith(
                  color: white,
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        const VerticalSpace(size: 12),
        Text(
          category,
          style: Get.textTheme.caption!.copyWith(
            color: lightGrey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
