import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/config/app_route/routes_names.dart';
import 'package:get/get.dart';

import '../../widgets/button_widgets.dart';
import '../../widgets/input_fields.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'New Password',
                      style:
                          Theme.of(context).textTheme.copyWith().headlineLarge,
                    ),
                    Text(
                      'Please enter your new password',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.copyWith().bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Form(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textInputField(
                        labelText: "New Password",
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textInputField(
                        labelText: "Confirm Password",
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: appButtons(
                        context,
                        "Submit",
                        onPressed: () {
                          Get.offNamedUntil(
                              RouteNames.login, (route) => route.isFirst);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
