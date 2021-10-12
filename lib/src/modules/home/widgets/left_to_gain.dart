import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/core/values/strings.dart';
import 'package:credpal/src/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeftToGainWidget extends GetView<HomeController> {
  const LeftToGainWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text.rich(
          TextSpan(
            text: '7.6',
            style: Get.textTheme.headline6!.copyWith(
              color: white,
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(
                text: ' kg',
                style: Get.textTheme.caption!.copyWith(
                  color: white,
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        LinearProgressIndicator(
          value: controller.progress,
          color: orangeColor,
          backgroundColor: deepGrey,
        ),
        Text(
          leftToGain,
          style: Get.textTheme.caption!.copyWith(
            color: lightGrey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
