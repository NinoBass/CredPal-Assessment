import 'package:credpal/src/core/values/colors.dart';
import 'package:credpal/src/core/values/strings.dart';
import 'package:credpal/src/data/models/workout.dart';
import 'package:flutter/material.dart';

List<WorkOut> previousWorkOutsList = [
  const WorkOut(
    date: "10",
    noOfExercises: "8",
    workOut: shouldersAndBack,
  ),
  const WorkOut(
    date: "12",
    noOfExercises: "13",
    workOut: chestAndLegs,
  ),
  const WorkOut(
    date: "14",
    noOfExercises: "10",
    workOut: shouldersAndBack,
  ),
  const WorkOut(
    date: "17",
    noOfExercises: "8",
    workOut: chestAndLegs,
  ),
];

List<Color> colorsList = [
  orangeColor,
  lightBlue,
  accentColor,
];
