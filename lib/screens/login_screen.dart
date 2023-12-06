import 'package:flutter/material.dart';
import 'package:interview_task/components/custom_button.dart';
import 'package:interview_task/components/custom_textfield.dart';
import 'package:interview_task/provider/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:interview_task/screens/home_screen/home_page.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;
  LoginPage({required this.onTap});

  // text controllers
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Consumer<AuthProvider>(
            builder: (context, authProvider, child) {
              return  Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // logo
                    Icon(
                      Icons.book_rounded,
                      size: 80,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
          
                    // app name
                    const Text("S T U D E N T  M A N A G E M E N T"),
                    const SizedBox(
                      height: 20,
                    ),
          
                    // email textfield
                    CustomTextField(
                      hintText: 'E-mail',
                      obscureText: false,
                      controller: authProvider.loginEmailController,
                    ),
          
                    const SizedBox(
                      height: 10,
                    ),
          
                    // password
                    CustomTextField(
                      hintText: 'Password',
                      obscureText: true,
                      controller: authProvider.loginPasswordController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // forgot password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.inversePrimary),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
          
                    // sign in button
                    CustomButtom(
                      text: "Login",
                      onTap: (){
                         Navigator.push(context,
                         MaterialPageRoute(builder:(context) => const HomePage(), ));
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // dont have an account Register here
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                        style: TextStyle(
                              color: Theme.of(context).colorScheme.inversePrimary),),
                        GestureDetector(
                          onTap: onTap,
                          child: const Text("Register here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
            },
          ),
        ),
      ),
    );
  }
}
