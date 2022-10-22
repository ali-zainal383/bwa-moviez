import 'package:flutter/material.dart';
import 'package:moviez/shared/theme.dart';
import 'package:moviez/ui/pages/search_page.dart';
import 'package:moviez/ui/widget/movie_tile.dart';
import 'package:moviez/ui/widget/popular_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moviez',
                  style: blueTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Watch much easier',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              },
              child: Container(
                width: 22,
                height: 22,
                margin: const EdgeInsets.only(
                  right: 11,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_search.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularMovies() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              PopularCard(
                title: 'John Wick 4',
                genres: 'Action, Crime',
                imageUrl: 'assets/image_poster1.png',
                rating: 5.0,
              ),
              PopularCard(
                title: 'Bohemian',
                genres: 'Documentary',
                imageUrl: 'assets/image_poster2.png',
                rating: 3.0,
              ),
            ],
          ),
        ),
      );
    }

    Widget disneyList() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Form Disney',
              style: blueTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            const MovieTile(
              title: 'Mulan Session',
              genres: 'History, War',
              imageUrl: 'assets/image_poster3.png',
              rating: 3.0,
            ),
            const MovieTile(
              title: 'Beauty & Beast',
              genres: 'Sci-Fiction',
              imageUrl: 'assets/image_poster4.png',
              rating: 5.0,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularMovies(),
        disneyList(),
      ],
    );
  }
}
