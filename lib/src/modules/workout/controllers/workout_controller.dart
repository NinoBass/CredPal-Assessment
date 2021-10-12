import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/previous_workouts.dart';

class WorkoutController extends GetxController {
  // OverlayEntry? entry;
  // final layerLink = LayerLink();
  // // @override
  // // void onInit() {
  // //   WidgetsBinding.instance!.addPostFrameCallback((_) => showOverlay());
  // //   super.onInit();
  // // }

  // void showOverlay(BuildContext context) {
  //   final overlay = Overlay.of(context)!;
  //   final renderBox = context.findRenderObject()! as RenderBox;
  //   final size = renderBox.size;

  //   entry = OverlayEntry(
  //     builder: (context) => CompositedTransformFollower(
  //       link: layerLink,
  //       showWhenUnlinked: false,
  //       offset: Offset(0, -size.height),
  //       child: Positioned(
  //         top: 2,
  //         child: PreviousWorkoutsOverlay(),
  //       ),
  //     ),
  //   );
  //   overlay.insert(entry!);
  // }

  // void hideOverlay() {
  //   entry!.remove();
  //   entry = null;
  // }
}
