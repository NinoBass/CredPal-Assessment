import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;

import 'package:get/get.dart';

import 'src/core/themes/app_theme.dart';
import 'src/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    DevicePreview(
      // enabled: false,
      builder: (context) => GetMaterialApp(
        defaultTransition: Transition.fade,
        debugShowCheckedModeBanner: false,
        title: "CredPal Assessment",
        theme: appTheme,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}
