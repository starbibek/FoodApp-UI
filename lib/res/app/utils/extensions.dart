import 'package:flutter/material.dart';

extension AppSizer on dynamic {
  double sw(BuildContext context) {
    return MediaQuery.of(context).size.width * this;
  }

  double sh(BuildContext context) {
    return MediaQuery.of(context).size.height * this;
  }

  double sp(BuildContext context) {
    return (MediaQuery.of(context).size.height * this) +
        (MediaQuery.of(context).size.width * this);
  }

  // double sptest(BuildContext context) {
  //   return this * ((MediaQuery.of(context).size.width / 3) / 100);
  // }
}
