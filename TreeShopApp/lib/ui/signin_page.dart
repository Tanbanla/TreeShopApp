import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/ui/root_page.dart';
import 'package:flutter_application_1/ui/screens/signup_page.dart';
import 'package:flutter_application_1/ui/screens/widgets/custom_field.dart';
import 'package:flutter_application_1/ui/screens/widgets/forgot_password.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/signin.png'),
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomField(
                icon: Icons.alternate_email,
                obscureText: false,
                hinText: 'Enter Email'),
            const CustomField(
                icon: Icons.lock, obscureText: true, hinText: 'Enter Password'),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const RootPage(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const ForgotPassword(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Forgot Password?',
                        style: TextStyle(color: Constants.blackColor),
                      ),
                      TextSpan(
                        text: 'Reset Here',
                        style: TextStyle(color: Constants.primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('OR'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Constants.primaryColor),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),  
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 30,
                    child: Image.asset('assets/images/google.png'),
                  ),
                  Text(
                    'Sign In with Google',
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignUp(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'New to Planty? ',
                        style: TextStyle(
                          color: Constants.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: Constants.primaryColor,
                        ),
                      ),
                    ]),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
