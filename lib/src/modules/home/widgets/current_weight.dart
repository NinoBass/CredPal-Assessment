import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/core/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentWeight extends StatelessWidget {
  const CurrentWeight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            text: '72.4',
            style: Get.textTheme.headline4!.copyWith(
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(
                text: ' kg',
                style: Get.textTheme.caption!.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Text(
          currentWeight,
          style: Get.textTheme.caption!.copyWith(
            color: lightGrey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
