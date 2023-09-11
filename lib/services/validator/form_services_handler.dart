import 'package:food_ordering/services/validator/form_services.dart';

class FormValidationServiceHandler implements FormValidationService {
  @override
  bool validateEmail(String email) {
    const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    final regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  @override
  bool validateName(String name) {
    const pattern = r'^[a-zA-Z]+(([",\.\-\s][a-zA-Z ])?[a-zA-Z]*)*$';
    final regex = RegExp(pattern);
    return regex.hasMatch(name);
  }

  @override
  bool validatePassword(String password) {
    // Password regular expression pattern
    const pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    final regex = RegExp(pattern);

    // Validate the password against the regular expression pattern
    return regex.hasMatch(password);
  }

  @override
  bool validatePhone(String phone) {
    const pattern = r'^\+?[0-9]{8,}$';
    final regex = RegExp(pattern);

    // Validate the phone number against the regular expression pattern
    return regex.hasMatch(phone);
  }
}
