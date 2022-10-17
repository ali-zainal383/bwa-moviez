import 'package:flutter/material.dart';
import 'package:moviez/shared/theme.dart';
import 'package:moviez/ui/widget/movie_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget search() {
      return Container(
        width: double.infinity,
        height: 45,
        margin: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: kBlueColor,
            ),
            hintText: 'The Dar|',
            hintStyle: blueTextStyle.copyWith(
              fontSize: 16,
              fontWeight: reguler,
            ),
          ),
        ),
      );
    }

    Widget searchResult() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search result (3)',
              style: blueTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const MovieTile(
              title: 'The Dark II',
              genres: 'Horror',
              imageUrl: 'assets/image_poster5.png',
              rateUrl: 'assets/rate_4.png',
            ),
            const MovieTile(
              title: 'The Dark Knight',
              genres: 'Heroes',
              imageUrl: 'assets/image_poster6.png',
              rateUrl: 'assets/rate_4.png',
            ),
            const MovieTile(
              title: 'The Dark Tower',
              genres: 'Action',
              imageUrl: 'assets/image_poster7.png',
              rateUrl: 'assets/rate_4.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        margin: const EdgeInsets.only(
          top: 30,
          right: 24,
          left: 24,
        ),
        child: Column(
          children: [
            search(),
            searchResult(),
          ],
        ),
      ),
    );
  }
}
