import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Linear Gradient Background
          Container(
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
            top: 50,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Transform.scale(
                      scale: 1.3, // Set the desired scale factor
                      child: Image.asset(
                        'lib/images/360_F_298692908_YGliYTHQ0QD66jYsDsdrKMaXgLe498bY-removebg-preview.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100, // Adjust this value to position the text correctly
            left: 40,
            child: Column(
              children: [
                Text(
                  'SL',
                  style: TextStyle(
                      fontSize: 117,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins-SemiBoldItalic',
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          const Offset(0, 0),
                          const Offset(100, 0),
                          <Color>[
                            ui.Color.fromARGB(255, 250, 250, 250),
                            ui.Color.fromARGB(255, 255, 255, 255),
                          ],
                        )),
                )
              ],
            ),
          ),
          Positioned(
            top: 240, // Adjust this value to position the text correctly
            right: 80,
            child: Column(
              children: [
                Text(
                  'Booking',
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins-MediumItalic',
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          const Offset(100, 15),
                          const Offset(250, 0),
                          <Color>[
                            ui.Color(0xFFFFFFFF),
                            ui.Color(0xFF0500FF),
                          ],
                        )),
                )
              ],
            ),
          ),
          Positioned(
            top: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Transform.scale(
                      scale: 0.7, // Set the desired scale factor
                      child: Image.asset(
                        'lib/images/toyota-coaster-bus-car-rental-coaster-bus-removebg-preview.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 740, // Adjust this value to position the button correctly
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondIntroPage');
                // Add your onPressed functionality here
              },
              style: ElevatedButton.styleFrom(
                
                backgroundColor: ui.Color(0xFF030252),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
                side: BorderSide(color: Colors.white, width: 2),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11), // Set corner radius here
                ),
              ),
              child: Text(  
                'Get Started',
                style: TextStyle(
                  fontSize: 33,
                  fontFamily: 'Poppins-MediumItalic',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
