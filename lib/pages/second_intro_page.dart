import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class SecondIntroPage extends StatelessWidget {
  const SecondIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    // Calculate values based on screen size
    final double topPadding = screenSize.height * 0.05;
    final double imageScaleFactor = screenSize.width / 360;
    final double titleFontSize = screenSize.width * 0.08;
    final double buttonFontSize = screenSize.width * 0.05;
    final double textFieldTopPadding = screenSize.height * 0.55;

    // FocusNode to handle TextField focus
    final FocusNode _focusNode = FocusNode();

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Linear Gradient Background
            Container(
              height: screenSize.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ui.Color(0xFF030021),
                    ui.Color(0xFF070147),
                    ui.Color(0xFF0602BD),
                    ui.Color(0xFF010037),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            // Image and text elements
            Positioned(
              top: topPadding,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Transform.scale(
                        scale: 1.3,
                        child: Image.asset(
                          'lib/images/360_F_298692908_YGliYTHQ0QD66jYsDsdrKMaXgLe498bY-removebg-preview.png',
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            return Text('Image not found');
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 20 * 4,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Welcome to Sri Lankan Transport Service',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 60,
                          fontFamily: 'Poppins-MediumItalic',
                          foreground: Paint()
                            ..shader = ui.Gradient.linear(
                              const Offset(0, 0),
                              const Offset(100, 0),
                              <Color>[
                                ui.Color.fromARGB(255, 255, 255, 255),
                                ui.Color.fromARGB(255, 255, 255, 255),
                              ],
                            )),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: screenSize.height *
                  0.61, // Adjust this value to position the TextField correctly
              left: 20,
              right: 20,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  TextField(
                    focusNode: _focusNode,
                    keyboardType: TextInputType.number,
                    // textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'continue with mobile number',
                      border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          color: ui.Color(0xFF2CFF0A),
                          width: 2, // Default border color
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          color: ui.Color(0xFF2CFF0A),
                          width: 2, // Border color when focused
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ui.Color(0xFF2CFF0A),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushNamed(context, '/verification');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenSize.height *
                  0.7, // Adjust this value to position the text correctly
              child: Column(
                children: [
                  Text(
                    'or',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontFamily: 'Poppins-SemiBoldItalic',
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialLoginButton(
                        text: 'Google',
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        image:
                            'lib/images/google.png', // Path to your Google icon image
                        onPressed: () {
                          // Handle Google login
                        },
                      ),
                      SizedBox(width: 20),
                      SocialLoginButton(
                        icon: Icons.facebook,
                        text: 'Facebook',
                        color: ui.Color.fromARGB(255, 25, 0, 245),
                        backgroundColor: Colors.white,
                        onPressed: () {
                          // Handle Facebook login
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenSize.height * 0.83,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {
                      // Handle checkbox state change
                    },
                    activeColor: Colors.white,
                  ),
                  Text(
                    'I agree to ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins-SemiBoldItalic'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle Terms & Conditions tap
                    },
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Poppins-SemiBoldItalic',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    ' and ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins-SemiBoldItalic'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle Privacy Policy tap
                    },
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Poppins-SemiBoldItalic',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialLoginButton extends StatelessWidget {
  final IconData? icon;
  final String? image;
  final String text;
  final Color color;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final double iconSize;

  SocialLoginButton({
    this.icon,
    this.image,
    required this.text,
    required this.color,
    required this.backgroundColor,
    required this.onPressed,
    this.iconSize = 24.0, // Default icon size
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: image != null
          ? Image.asset(
              image!,
              width: iconSize,
              height: iconSize,
            )
          : Icon(icon, color: color, size: iconSize),
      label: Text(text, style: TextStyle(color: color)),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
