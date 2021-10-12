import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/data/data_source/local_data_source/dummy_workouts_list.dart';
import 'package:credpal/src/modules/home/widgets/workout_tile.dart';
import 'package:credpal/src/modules/workout/controllers/workout_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/flippers/flip_in_x.dart';
import 'package:get/get.dart';

class PreviousWorkoutsOverlay extends GetView {
  PreviousWorkoutsOverlay({Key? key}) : super(key: key);

  @override
  final WorkoutController controller = Get.put(WorkoutController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FlipInX(
        key: controller.animationKey2,
        child: Row(
          children: previousWorkOutsList
              .asMap()
              .entries
              .map((MapEntry map) => previousWorkouts(index: map.key as int))
              .toList(),
        ),
      ),
    ).marginOnly(left: 10);
  }

  Widget previousWorkouts({required int index}) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor2,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(right: 10),
      width: Get.width * 0.65,
      padding: const EdgeInsets.all(25),
      child: WorkoutTile(
        workout: previousWorkOutsList[index],
      ),
    );
  }
}
