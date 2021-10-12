import 'package:get/get.dart';

import 'package:credpal/src/modules/workout/bindings/workout_binding.dart';
import 'package:credpal/src/modules/workout/views/workout_view.dart';
import 'package:credpal/src/modules/home/bindings/home_binding.dart';
import 'package:credpal/src/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WORKOUT,
      page: () => WorkoutTab(),
      binding: WorkoutBinding(),
    ),
  ];
}
