import 'package:get/get.dart';

class HomeController extends GetxController {
  final progress = 0.7;

  //getters and setters for showWorkoutTab
  final _showWorkoutTab = false.obs; //always false onInit of controller

  bool get showWorkoutTab => _showWorkoutTab.value;

  set showWorkoutTab(bool value) => _showWorkoutTab(value);
}
