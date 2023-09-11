import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering/res/app/config/app_route/routes_names.dart';
import 'package:food_ordering/res/app/contants/manager/assets_manager.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller!)
      ..addListener(() {
        setState(() {
          if (_animation?.value == 300) {
            Get.offNamed(RouteNames.onboarding);
          }
        });
      });
    _controller?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            assetsManager.splashScreenBg,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetsManager.forbesLogo,
                  width: _animation?.value,
                  height: _animation?.value,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
