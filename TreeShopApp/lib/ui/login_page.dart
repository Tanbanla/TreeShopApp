import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';


class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const  Text('Login page'),
        backgroundColor: Constants.primaryColor,
      ),
    );
  }

  
}