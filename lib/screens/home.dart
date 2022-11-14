import 'package:disney_ui/utils/coursel_view.dart';
import 'package:disney_ui/utils/hit_movies.dart';
import 'package:disney_ui/utils/movies_view.dart';
import 'package:disney_ui/utils/recomended_movies_view.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Courselview(),
            SizedBox(
              height: 20,
            ),
            Moviesview(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Recommended for You",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                ],
              ),
            ),
            Recomendedmovies(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Hit Movies",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                ],
              ),
            ),
            Hitmovies()
          ],
        ),
      ),
    );
  }
}
