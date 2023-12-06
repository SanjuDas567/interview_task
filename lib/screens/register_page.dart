import 'package:flutter/material.dart';
import 'package:interview_task/components/custom_button.dart';
import 'package:interview_task/components/custom_textfield.dart';
import 'package:interview_task/provider/register_provider.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  // text controllers
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Consumer<RegisterProvider>(
             builder: (context, registerProvider, child) {
               return Center(
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
                    const Text("S T U D E N T  R E G I S T E R"),
                    const SizedBox(
                      height: 20,
                    ),
          
                    // name textfield
                    CustomTextField(
                      hintText: 'User name',
                      obscureText: false,
                      controller: registerProvider.userNameController,
                    ),
          
                    const SizedBox(
                      height: 10,
                    ),
          
                    // email textfield
                    CustomTextField(
                      hintText: 'E-mail',
                      obscureText: false,
                      controller: registerProvider.emailController,
                    ),
          
                    const SizedBox(
                      height: 10,
                    ),
          
                    // password
                    CustomTextField(
                      hintText: 'Password',
                      obscureText: true,
                      controller: registerProvider.passwordController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
          
                    // confirm password
                    CustomTextField(
                      hintText: 'Confirm Password',
                      obscureText: true,
                      controller: registerProvider.confirmPasswordController,
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
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
          
                    // sign in button
                    CustomButtom(
                      text: "Register",
                      onTap: registerProvider.register,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // dont have an account Register here
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        ),
                        GestureDetector(
                          onTap: onTap,
                          child: const Text(
                            "Login Here",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
