import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../app/config/app_route/routes_names.dart';
import '../../widgets/button_widgets.dart';
import '../../widgets/input_fields.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
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
                      'Sign Up',
                      style:
                          Theme.of(context).textTheme.copyWith().headlineLarge,
                    ),
                    Text(
                      'Create an account',
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
                        labelText: "Name",
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    const SizedBox(height: 20),
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
                      child: textInputField(
                        labelText: "Mobile no.",
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textInputField(
                        labelText: "Address",
                        keyboardType: TextInputType.streetAddress,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textInputField(
                          labelText: "Password",
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: appButtons(
                        context,
                        "Register",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: Theme.of(context).textTheme.copyWith().bodyLarge,
                ),
                TextButton(
                  onPressed: () {
                    var previousRoute = Get.previousRoute;
                    if (previousRoute == RouteNames.login) {
                      Get.back();
                    } else {
                      Get.offNamed(RouteNames.login);
                    }
                  },
                  child: Text(
                    "Login",
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
