import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopapp/pages/Homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
              right: 40.0,
              bottom: 80.0,
              top: 160,
            ),
            child: Image.asset('lib/images/d.png'),
          ),
          //text add
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep!',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 30,
              ),
            ),
          ),
          const Text(
            "Fresh goods everyday",
            style: TextStyle(
                color: Color.fromARGB(
              255,
              46,
              46,
              46,
            )),
            textAlign: TextAlign.center,
          ),
          const Spacer(),

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 124, 94, 204),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Let's Shopping",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
