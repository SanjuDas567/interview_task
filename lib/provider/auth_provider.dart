import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  // auth 

  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

   bool _showLoginPage = true;
   bool get showLoginPage => _showLoginPage;


   

  void tooglePages() {
    print(_showLoginPage);
      _showLoginPage = !_showLoginPage;
   notifyListeners();
  }

   loginMethod(){
     // show loading circle
    //  Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(), ));
  }

}