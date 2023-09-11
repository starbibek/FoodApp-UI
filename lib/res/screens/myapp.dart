import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/config/themes/light_theme.dart';
import 'package:get/get.dart';

import '../app/config/app_route/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Forbes Kitchen',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      initialRoute: '/',
    );
  }
}
