import 'package:flutter/material.dart';

class Recomendedmovies extends StatefulWidget {
  Recomendedmovies({Key? key}) : super(key: key);

  @override
  State<Recomendedmovies> createState() => _RecomendedmoviesState();
}

class _RecomendedmoviesState extends State<Recomendedmovies> {
  List<String> images = [
    "assets/m1.jpg",
    "assets/m2.jpg",
    "assets/m4.jpg",
    "assets/m5.jpg",
    "assets/m7.jpg",
    "assets/m8.jpg",
    "assets/m9.jpg",
  ];

  int activePage = 1;

  final _pageController = PageController(viewportFraction: 0.4, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 180,
        child: PageView.builder(
          controller: _pageController,
          itemCount: images.length,
          pageSnapping: true,
          onPageChanged: (page) => setState(() => activePage = page),
          itemBuilder: (context, pagePosition) {
            bool isCenterImage = pagePosition == activePage;
            return Image.asset(images[pagePosition]);
          },
        ),
      ),
    );
  }
}
