import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/core/values/strings.dart';
import 'package:credpal/src/data/models/workout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fitness_tab_indicator.dart';
import 'spacing.dart';

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({
    Key? key,
    required this.workout,
    this.isRecent = false,
  }) : super(key: key);

  final WorkOut workout;
  final bool isRecent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: lightBlue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  aug,
                  style: Get.textTheme.bodyText2!.copyWith(
                    color: white.withOpacity(.6),
                  ),
                ),
                Text(
                  workout.date,
                  style: Get.textTheme.headline6!.copyWith(
                    color: white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const FitnessTabIndicator(color: orangeColor),
                    if (isRecent)
                      const FitnessTabIndicator(color: accentColor)
                          .marginSymmetric(horizontal: 2),
                    if (!isRecent) const HorizontalSpace(size: 2),
                    const FitnessTabIndicator(color: lightBlue),
                  ],
                ),
                Text(
                  isRecent ? recent + workout.workOut : workout.workOut,
                  style: Get.textTheme.bodyText2!.copyWith(
                    color: white,
                    height: 0,
                  ),
                ),
                Text(
                  isRecent
                      ? workout.noOfExercises + done
                      : workout.noOfExercises,
                  style: Get.textTheme.bodyText2!
                      .copyWith(color: lightGrey, height: 0),
                ),
              ],
            ).paddingSymmetric(horizontal: 16, vertical: 8),
          ),
          if (isRecent)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColor,
              ),
              child: const Icon(
                Icons.chevron_right,
                color: white,
                size: 22,
              ),
            ),
        ],
      ),
    );
  }
}
