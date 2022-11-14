import 'package:flutter/material.dart';

class Moviesview extends StatelessWidget {
  Moviesview({Key? key}) : super(key: key);

  static List<String> logos = [
    'assets/disneybanner.png',
    'assets/pixar.png',
    'assets/MarvelLogo.png',
    'assets/starwars.png',
    'assets/ngowild.png',
  ];

  final startColor = const Color.fromARGB(255, 54, 56, 70);
  final endColor = const Color.fromARGB(255, 39, 41, 53);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: logos.length,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return buildLogo(logos[index]);
        },
      ),
    );
  }

  Widget buildLogo(String logo) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white54,
            width: 0.5,
          ),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              startColor,
              endColor,
            ],
          ),
        ),
        child: Image.asset(
          logo,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
