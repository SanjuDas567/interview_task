import 'package:flutter/material.dart';
import 'package:interview_task/auth/login_or_register.dart';
import 'package:interview_task/provider/auth_provider.dart';
import 'package:interview_task/provider/home_provider.dart';
import 'package:interview_task/provider/register_provider.dart';
import 'package:interview_task/theme/dark_theme.dart';
import 'package:interview_task/theme/light_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => RegisterProvider()),
        ChangeNotifierProvider(create: (_) => HomeScreenProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: const LoginOrRegister(),
    );
  }
}
