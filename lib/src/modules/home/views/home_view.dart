import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/core/values/strings.dart';
import 'package:credpal/src/data/data_source/local_data_source/recent_workout.dart';
import 'package:credpal/src/modules/workout/views/workout_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/current_weight.dart';
import '../widgets/fitness_category.dart';
import '../widgets/fitness_tab_indicator.dart';
import '../widgets/fitness_tabs.dart';
import '../widgets/header_widget.dart';
import '../widgets/left_to_gain.dart';
import '../widgets/spacing.dart';
import '../widgets/workout_tile.dart';

class HomeView extends GetView<HomeController> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        top: false,
        child: Obx(
          () => Scaffold(
            backgroundColor: controller.showWorkoutTab
                ? darkBackgroundColor
                : backgroundColor,
            body: DefaultTextStyle.merge(
              style: const TextStyle(color: white, letterSpacing: 1.0),
              child: SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      const LandingPageView()
                          .paddingSymmetric(
                            horizontal: 35,
                          )
                          .marginOnly(top: 60),
                      if (controller.showWorkoutTab)
                        LightSpeedIn(
                          key: controller.animationKey1,
                          preferences: const AnimationPreferences(
                            duration: Duration(milliseconds: 500),
                          ),
                          child: WorkoutTab().marginOnly(top: 55),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LandingPageView extends GetView<HomeController> {
  const LandingPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const HeaderWidget(),
        const VerticalSpace(size: 40),
        const FitnessTabs(),
        const FitnessTabIndicator(),
        const VerticalSpace(size: 35),
        Text(
          '58',
          style: Get.textTheme.headline2!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ).marginOnly(bottom: 4),
        Text(
          workoutsCompleted,
          style: Get.textTheme.bodyText2!.copyWith(
            color: lightGrey,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 60,
          child: Row(
            children: const [
              Expanded(flex: 3, child: CurrentWeight()),
              Expanded(
                flex: 2,
                child: VerticalDivider(
                  color: deepGrey,
                  width: 1,
                  thickness: 1,
                ),
              ),
              Expanded(flex: 3, child: LeftToGainWidget())
            ],
          ),
        ).marginSymmetric(vertical: 45),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FitnessCategory(
              category: lost,
              value: '12.6k',
              unit: 'cal',
              icon: CupertinoIcons.layers_alt_fill,
              iconColor: orangeColor,
              baseColor: Color(0xFF50395A),
            ),
            const FitnessCategory(
              icon: CupertinoIcons.lessthan_circle_fill,
              iconColor: lightGrey,
              baseColor: Color(0xFF3B3E8C),
              category: lifted,
              value: '270k',
              unit: 'kg',
            ),
            FitnessCategory(
              icon: CupertinoIcons.time_solid,
              iconColor: lightBlue,
              baseColor: lightBlue.withOpacity(.1),
              category: training,
              value: '5',
              unit: 'months',
            ),
          ],
        ),
        const VerticalSpace(size: 45),
        WorkoutTile(
          isRecent: true,
          workout: recentWorkOut.first,
        ),
      ],
    );
  }
}
