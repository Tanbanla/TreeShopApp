import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
class CustomField extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hinText;
  const CustomField({
    super.key,required this.icon, required this.obscureText, required this.hinText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Constants.blackColor,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          icon,
          color: Constants.blackColor.withOpacity(.3),
        ),
        hintText: hinText,
      ),
      cursorColor: Constants.blackColor.withOpacity(.5),
    );
  }
}