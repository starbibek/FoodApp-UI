import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/config/app_route/routes_names.dart';
import 'package:get/get.dart';

import '../../widgets/button_widgets.dart';
import '../../widgets/input_fields.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                      'Reset Password',
                      style:
                          Theme.of(context).textTheme.copyWith().headlineLarge,
                    ),
                    Text(
                      'Please enter your email address. You will receive a link to create a new password via email.',
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
                        labelText: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: appButtons(
                        context,
                        "Send",
                        onPressed: () {
                          Get.toNamed(RouteNames.otpVerify);
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
