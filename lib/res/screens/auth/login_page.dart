import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/config/app_route/routes_names.dart';
import '../../widgets/button_widgets.dart';
import '../../widgets/input_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style:
                          Theme.of(context).textTheme.copyWith().headlineLarge,
                    ),
                    Text(
                      'Login to your account',
                      style: Theme.of(context).textTheme.copyWith().bodyLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Form(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        child: textInputField(
                            labelText: "Password", obscureText: true),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: appButtons(
                          context,
                          "Login",
                          onPressed: () {
                            Get.offAllNamed(RouteNames.home);
                          },
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RouteNames.forgotPassword);
                        },
                        child: Text(
                          "Forgot Password?",
                          style: Theme.of(context)
                              .textTheme
                              .copyWith()
                              .bodyLarge
                              ?.copyWith(color: Colors.redAccent),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: Theme.of(context).textTheme.copyWith().bodyLarge,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(RouteNames.register);
                    },
                    child: Text(
                      "Sign Up",
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
        ],
      ),
    ));
  }
}
