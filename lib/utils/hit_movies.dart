import 'package:flutter/material.dart';

class Hitmovies extends StatefulWidget {
  Hitmovies({Key? key}) : super(key: key);

  @override
  State<Hitmovies> createState() => _HitmoviesState();
}

class _HitmoviesState extends State<Hitmovies> {
  List<String> images = [
    "assets/h1.jpg",
    "assets/h2.jpg",
    "assets/h3.jpg",
    "assets/h4.jpg",
    "assets/h5.jpg",
    "assets/h6.jpg",
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
