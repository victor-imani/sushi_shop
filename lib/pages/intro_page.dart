import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_shop/components/button.dart';
import 'package:sushi_shop/pages/menu_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),
            //shop naME
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // Icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('images/salmon_eggs.png'),
            ),

            const SizedBox(
              height: 25,
            ),
            //title
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            //subtitle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and at anytime",
              style: TextStyle(
                color: Colors.grey.shade300,
                height: 2,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: "Get Started",
              tapFunction: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            ),

            //get started button
          ],
        ),
      ),
    );
  }
}
