import 'package:flutter/material.dart';
import 'package:sl_booking/pages/second_intro_page.dart';
import 'package:sl_booking/pages/intro_page.dart';
import 'package:sl_booking/pages/verification_page.dart'; // Import the Verification page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/secondIntroPage': (context) => const SecondIntroPage(),
        '/verification': (context) => const VerificationPage(), // Now this should work
      },
    );
  }
}
