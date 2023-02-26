import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Cargo Pants.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            bottom: 250,
            child: Text(
              'Welcome to 👋🏾',
              style: GoogleFonts.itim(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 170,
            child: Text(
              'GREY CLOSET',
              style: GoogleFonts.itim(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              // TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 50,
              //     color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 100,
            child: Container(
              child: Text(
                'The best clothes \& Sneakers e-commerce app of the century for your fashion needs\!',
                style: GoogleFonts.itim(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                // TextStyle(
                //     fontWeight: FontWeight.w500,
                //     fontSize: 15,
                //     color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
