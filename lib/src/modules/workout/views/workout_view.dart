import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/core/values/strings.dart';
import 'package:credpal/src/modules/home/controllers/home_controller.dart';
import 'package:credpal/src/modules/home/widgets/spacing.dart';
import 'package:credpal/src/modules/workout/controllers/workout_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/previous_workouts.dart';

class WorkoutTab extends GetView {
  WorkoutTab({
    Key? key,
  }) : super(key: key);

  @override
  final WorkoutController controller = Get.put(WorkoutController());

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'workout',
      transitionOnUserGestures: true,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF373761),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: Get.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Color(0xFF5B4164),
                      shape: BoxShape.circle,
                    ),
                    child: Transform.scale(
                      scale: 0.5,
                      child: Image.asset(
                        flame,
                        color: orangeColor,
                      ),
                    ),
                  ),
                ),
                const HorizontalSpace(size: 30),
                Text(
                  newWorkOut,
                  style: Get.textTheme.bodyText1!.copyWith(fontSize: 16),
                ),
              ],
            ).marginAll(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fromPrevious,
                  style: Get.textTheme.headline5,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: containerColor2,
                  ),
                  child: const Icon(
                    Icons.chevron_right,
                    color: white,
                    size: 22,
                  ),
                ),
              ],
            ).marginSymmetric(horizontal: 30),
            const VerticalSpace(size: 30),
            const PreviousWorkoutsOverlay(),
            GestureDetector(
              onTap: () {
                homeController.showWorkoutTab = false;
              },
              onVerticalDragStart: (_) {
                homeController.showWorkoutTab = false;
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.close_fullscreen,
                    color: lightGrey,
                    size: 22,
                  ),
                  const HorizontalSpace(size: 3),
                  Text(
                    close,
                    style: Get.textTheme.bodyText1!.copyWith(),
                  ),
                ],
              ),
            ).marginAll(30),
          ],
        ),
      ),
    );
  }
}
