import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (route == '/home'
        // && !AuthController()..isLoggedIn
        ) {
      return const RouteSettings(name: '/login');
    }
    return null;
  }
}
