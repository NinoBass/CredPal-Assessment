import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/core/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'spacing.dart';

class FitnessTabs extends StatelessWidget {
  const FitnessTabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          stats,
          style: Get.textTheme.headline4!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const HorizontalSpace(size: 16),
        Text(
          muscles,
          style: Get.textTheme.headline4!.copyWith(
            color: lightGrey,
          ),
        ),
      ],
    );
  }
}
