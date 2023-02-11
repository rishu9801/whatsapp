import 'package:flutter/material.dart';
import 'package:whatsapp/features/auth/screens/login_screen.dart';
import 'package:whatsapp/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 50),
          Image.asset(
            'assets/images/whatsapp_bg.png',
            height: 360,
            width: 360,
          ),
          const SizedBox(height: 15),
          const Text(
            'Welcome to WhatsApp',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.white60),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Read our Privacy Policy. Tap Agree and Continue to accept the Terms of Service.",
              style: TextStyle(color: Colors.white30, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: size.width * 0.75,
            child: CustomButton(
              text: "AGREE AND CONTINUE",
              onPressed: () => navigateToLoginScreen(context),
            ),
          )
        ],
      )),
    );
  }
}
