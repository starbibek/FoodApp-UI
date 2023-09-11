import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/config/app_route/routes_names.dart';
import 'package:food_ordering/res/app/utils/extensions.dart';
import 'package:get/get.dart';

import '../../widgets/button_widgets.dart';

class OTPVerifyPage extends StatelessWidget {
  OTPVerifyPage({super.key});
  final String email = Get.arguments ?? '';
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
                      'We have sent an OTP to your email address.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .copyWith()
                          .headlineLarge
                          ?.copyWith(
                            fontSize: 0.024.sp(context),
                          ),
                    ),
                    Text(
                      'Please enter the OTP to verify your email address.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.copyWith().bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0.02.sh(context)),
            Form(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter OTP';
                              }
                              return null;
                            },
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              if (value.length == 1 &&
                                  i != 3 &&
                                  FocusScope.of(context).hasFocus) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.isEmpty &&
                                  i != 0 &&
                                  FocusScope.of(context).hasFocus) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: '*',
                              hintStyle: TextStyle(
                                fontSize: 0.022.sp(context),
                                fontWeight: FontWeight.w900,
                              ),
                              fillColor: const Color(0xffF2F2F2),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.transparent,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 0.022.sp(context),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0.02.sh(context)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: appButtons(
                context,
                "Next",
                onPressed: () {
                  Get.toNamed(RouteNames.resetPassword);
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive the OTP?",
                  style: Theme.of(context).textTheme.copyWith().bodyLarge,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend OTP",
                    style: Theme.of(context)
                        .textTheme
                        .copyWith()
                        .bodyLarge
                        ?.copyWith(color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
