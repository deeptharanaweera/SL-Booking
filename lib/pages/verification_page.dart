import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  final ValueNotifier<bool> _isSubmitEnabled = ValueNotifier(false);
  final List<TextEditingController> _otpControllers = List.generate(4, (_) => TextEditingController());

  @override
  void initState() {
    super.initState();
    for (var controller in _otpControllers) {
      controller.addListener(_checkOTPFields);
    }
  }

  void _checkOTPFields() {
    for (var controller in _otpControllers) {
      if (controller.text.isEmpty) {
        _isSubmitEnabled.value = false;
        return;
      }
    }
    _isSubmitEnabled.value = true;
  }

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    final double topPadding = screenSize.height * 0.05;
    final double imageScaleFactor = screenSize.width / 360;
    final double titleFontSize = screenSize.width * 0.08;
    final double buttonFontSize = screenSize.width * 0.05;
    final double textFieldTopPadding = screenSize.height * 0.55;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
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
            Positioned(
              top: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Transform.scale(
                        scale: 0.8,
                        child: Image.asset(
                          'lib/images/3763926-ezgif.com-webp-to-png-converter.png',
                          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
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
              top: 95 * 4,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'OTP Verification',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        
                        fontFamily: 'Poppins-Bold',
                        foreground: Paint()
                          ..shader = ui.Gradient.linear(
                            const Offset(0, 0),
                            const Offset(100, 0),
                            <Color>[
                              ui.Color.fromARGB(255, 255, 255, 255),
                              ui.Color.fromARGB(255, 255, 255, 255),
                            ],
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 110 * 4,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'We will send your one time password on your mobile number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins-Medium',
                        foreground: Paint()
                          ..shader = ui.Gradient.linear(
                            const Offset(0, 0),
                            const Offset(100, 0),
                            <Color>[
                              ui.Color.fromARGB(255, 255, 255, 255),
                              ui.Color.fromARGB(255, 255, 255, 255),
                            ],
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 121 * 4,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      '+94 768302810',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins-Medium',
                        foreground: Paint()
                          ..shader = ui.Gradient.linear(
                            const Offset(0, 0),
                            const Offset(100, 0),
                            <Color>[
                              ui.Color.fromARGB(255, 43, 255, 0),
                              ui.Color.fromARGB(255, 43, 255, 0),
                            ],
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenSize.height * 0.62,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOTPField(_focusNode1, _focusNode2, context, _otpControllers[0]),
                  _buildOTPField(_focusNode2, _focusNode3, context, _otpControllers[1]),
                  _buildOTPField(_focusNode3, _focusNode4, context, _otpControllers[2]),
                  _buildOTPField(_focusNode4, null, context, _otpControllers[3]),
                ],
              ),
            ),
            Positioned(
              top: 148 * 4,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      '0.30',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins-Medium',
                        foreground: Paint()
                          ..shader = ui.Gradient.linear(
                            const Offset(0, 0),
                            const Offset(100, 0),
                            <Color>[
                              ui.Color.fromARGB(255, 255, 81, 0),
                              ui.Color.fromARGB(255, 255, 81, 0),
                            ],
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenSize.height * 0.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t receive code ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle Resend code tap
                    },
                    child: Text(
                      ' Resend code',
                      style: TextStyle(
                        fontSize: 16,
                        color: const ui.Color.fromARGB(255, 0, 255, 8),
                        fontFamily: 'Poppins-Medium',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenSize.height * 0.82,
              child: ValueListenableBuilder<bool>(
                valueListenable: _isSubmitEnabled,
                builder: (context, isSubmitEnabled, child) {
                  return SubmitButton(
                    onPressed: isSubmitEnabled
                        ? () {
                            // Add your submit button onPressed logic here
                          }
                        : null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOTPField(FocusNode currentFocusNode, FocusNode? nextFocusNode, BuildContext context, TextEditingController controller) {
    return SizedBox(
      width: 60,
      child: TextField(
        controller: controller,
        focusNode: currentFocusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ui.Color(0xFF2CFF0A),
              width: 2,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ui.Color(0xFF2CFF0A),
              width: 2,
            ),
          ),
        ),
        style: TextStyle(
          fontSize: 18,
        ),
        onChanged: (value) {
          if (value.length == 1) {
            if (nextFocusNode != null) {
              FocusScope.of(context).requestFocus(nextFocusNode);
            } else {
              currentFocusNode.unfocus();
            }
          }
        },
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  final VoidCallback? onPressed; // Nullable callback to handle disabled state

  const SubmitButton({this.onPressed}); // Constructor updated to accept nullable callback

  @override
  Widget build(BuildContext context) {
    // ValueNotifier to track hover state
    final ValueNotifier<bool> isHovered = ValueNotifier(false);

    return MouseRegion(
      onEnter: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      child: ValueListenableBuilder<bool>(
        valueListenable: isHovered,
        builder: (context, isHovered, child) {
          return ElevatedButton(
            onPressed: onPressed, // Button will be disabled if onPressed is null
            style: ElevatedButton.styleFrom(
              backgroundColor: isHovered
                  ? ui.Color.fromARGB(255, 0, 0, 0)
                  : ui.Color.fromARGB(255, 34, 255, 0), // Change color on hover
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Submit',
              style: TextStyle(
                color: Colors.black,
                fontSize: 33,
                fontFamily: 'Poppins-Medium',
              ),
            ),
          );
        },
      ),
    );
  }
}



