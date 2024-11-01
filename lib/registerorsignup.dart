import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/signin.dart';

class RegisterOrSignup extends StatelessWidget {
  const RegisterOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background image elements
          Positioned(
            left: 0,
            bottom: 0,
            child: IgnorePointer(
              ignoring: true,
              child: Image.asset(
                'assets/girl.png',
                height: screenHeight * 0.55,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: IgnorePointer(
              ignoring: true,
              child: Image.asset(
                'assets/bottomline.png',
                height: screenHeight * 0.3,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: screenHeight * -0.02,
            child: IgnorePointer(
              ignoring: true,
              child: Image.asset(
                'assets/bottomline.png',
                height: screenHeight * 0.25,
              ),
            ),
          ),
          // Main content
          Positioned(
            top: screenHeight * 0.02,
            left: screenWidth * 0.04,
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 35, 35, 35),
              radius: screenWidth * 0.035,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: screenHeight * 0.015,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.2),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/Vector.png',
                      height: screenHeight * 0.1,
                      width: screenWidth * 0.6,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                      child: Text(
                        'Enjoy Listening to Music',
                        style: TextStyle(
                          fontSize: screenHeight * 0.025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                      child: Text(
                        'Dagittis enimpurus sed phasellus. Cursus ornare id scelerisque aliquam',
                        style: TextStyle(
                          fontSize: screenHeight * 0.018,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 29, 175, 34),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.04),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.1,
                              vertical: screenHeight * 0.03,
                            ),
                          ),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: screenHeight * 0.02,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(const Signin());
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.04),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.1,
                              vertical: screenHeight * 0.03,
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: screenHeight * 0.02,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
