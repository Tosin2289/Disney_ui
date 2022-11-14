import 'package:flutter/material.dart';

class Courselview extends StatefulWidget {
  Courselview({Key? key}) : super(key: key);

  @override
  State<Courselview> createState() => _CourselviewState();
}

class _CourselviewState extends State<Courselview> {
  List<String> images = [
    "assets/dis1.jpg",
    "assets/dis2.jpg",
    "assets/dis3.jpg",
    "assets/dis4.jpg",
    "assets/dis5.jpg",
    "assets/dis6.jpg",
    "assets/dis7.jpg",
  ];

  int activePage = 1;
  final _pageController = PageController(viewportFraction: 0.9, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: PageView.builder(
        controller: _pageController,
        itemCount: images.length,
        pageSnapping: true,
        onPageChanged: (page) => setState(() => activePage = page),
        itemBuilder: (context, pagePosition) {
          bool isCenterImage = pagePosition == activePage;
          return showImage(images[pagePosition], isCenterImage);
        },
      ),
    );
  }

  AnimatedContainer showImage(String image, bool active) {
    double margin = active ? 0 : 20;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
