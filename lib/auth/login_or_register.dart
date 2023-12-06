import 'package:flutter/material.dart';
import 'package:interview_task/provider/auth_provider.dart';
import 'package:interview_task/screens/login_screen.dart';
import 'package:interview_task/screens/register_page.dart';
import 'package:provider/provider.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, child) {
         if(authProvider.showLoginPage){
      return LoginPage(onTap: authProvider.tooglePages,);
    } else {
      return RegisterPage(onTap: authProvider.tooglePages,);
    }
      },
    );
   
  }
}