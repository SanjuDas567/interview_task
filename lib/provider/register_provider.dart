import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  void register() {
    print('register button pressed');
    print(emailController.text);
    print(passwordController.text);
    print(userNameController.text);
    print(confirmPasswordController.text);
  }
}
