import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering/res/app/config/app_route/routes_names.dart';
import 'package:food_ordering/res/app/utils/utils_index.dart';
import 'package:get/get.dart';

import '../../app/contants/manager/assets_manager.dart';
import '../../widgets/button_widgets.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 0.6.sh(context),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: -0.01.sw(context),
                  right: -0.01.sw(context),
                  // top: -0.008.sh(context),
                  // left: -0.087.sw(context),
                  // right: -0.087.sw(context),
                  child: SvgPicture.asset(
                    assetsManager.loginUpperView,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 0.47.sh(context),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      assetsManager.forbesLogo,
                      height: 0.25.sh(context),
                      width: 0.3.sw(context),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 0.4.sh(context),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Discover the best food & drinks in town'),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    appButtons(context, "Login", onPressed: () {
                      Get.toNamed(RouteNames.login);
                    }),
                    const SizedBox(height: 20),
                    appButtons(context, "Create an Account", onPressed: () {
                      Get.toNamed(RouteNames.register);
                    },
                        backgroundColor: Colors.white,
                        borderColor: Colors.redAccent,
                        textColor: Colors.redAccent),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
