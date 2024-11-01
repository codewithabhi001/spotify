import 'package:flutter/material.dart';

class Choosemode extends StatelessWidget {
  const Choosemode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/choosemode.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Image.asset('assets/Vector.png'),
            const Spacer(),
            const Text('Choose Mode',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 2,
                    color: Colors.white)),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green.withOpacity(0.1),
                      child: IconButton(
                        color: Colors.white,
                        icon: const Icon(
                          Icons.dark_mode,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Dark Mode ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green.withOpacity(0.1),
                      child: IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.light_mode),
                          onPressed: () {}),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Light Mode ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 29, 175, 34),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 25),
                textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
