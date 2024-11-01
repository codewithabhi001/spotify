import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  // Centered Image
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/Vector.png',
                      height: 25,
                      fit: BoxFit.contain,
                    ),
                  ),

                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 35, 35, 35),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    alignment: Alignment
                        .center, // Center the content within the container
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios, size: 10),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
              ),
              const SizedBox(
                height: 11,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('If you need any Help.', style: TextStyle(fontSize: 12)),
                  SizedBox(
                    width: 2,
                  ),
                  Text('Click Here',
                      style: TextStyle(color: Colors.green, fontSize: 12)),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                        borderSide: const BorderSide(
                            width: 0.5,
                            color: Color.fromARGB(255, 93, 93, 93))),
                    hintText: 'Enter Username Or Email',
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        wordSpacing: 2,
                        color: Color.fromARGB(255, 93, 93, 93))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                          width: 0.5, color: Color.fromARGB(255, 93, 93, 93))),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      fontSize: 12,
                      wordSpacing: 2,
                      color: Color.fromARGB(255, 93, 93, 93)),
                  suffixIcon: const Icon(Icons.visibility_off,
                      color: Color.fromARGB(255, 93, 93, 93)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recovery Password',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: const Color.fromARGB(255, 59, 210, 64),
                    minimumSize: const Size(double.infinity, 70)),
                onPressed: () {},
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                      // Space between the line and the text
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 8.0), // Space around the text
                    child: Text(
                      'Or',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                      // Space between the line and the text
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.google,
                      size: 25,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      FontAwesomeIcons.apple,
                      size: 25,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              RichText(
                  text: const TextSpan(
                      text: 'Not A Member ?',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                      children: [
                    TextSpan(
                        text: '  Register Now',
                        style: TextStyle(color: Colors.blue))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
