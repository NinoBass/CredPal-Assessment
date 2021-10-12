import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/core/values/strings.dart';
import 'package:credpal/src/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'spacing.dart';

class HeaderWidget extends GetView<HomeController> {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(avatar),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const HorizontalSpace(size: 10),
        Text(
          helloNino,
          style: Get.textTheme.bodyText2,
        ),
        const Spacer(),
        Hero(
          tag: 'workout',
          transitionOnUserGestures: true,
          child: InkWell(
              onTap: () {
                controller.showWorkoutTab = true;
              },
              borderRadius: BorderRadius.circular(10),
              child: const FireIcon()),
        ),
      ],
    );
  }
}

class FireIcon extends StatelessWidget {
  const FireIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Transform.scale(
        scale: 0.6,
        child: Image.asset(
          flame,
          color: white,
        ),
      ),
    );
  }
}
