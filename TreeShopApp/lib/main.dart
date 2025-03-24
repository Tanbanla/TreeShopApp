import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.https://youtu.be/msei_roqbgg?si=9-e7i_UOreq9G2Gn, https://youtu.be/pEtwnvgYCPM?si=PzXTpBxcOPg-NV8t
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}