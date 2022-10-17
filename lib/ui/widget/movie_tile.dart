import 'package:flutter/material.dart';
import 'package:moviez/shared/theme.dart';

class MovieTile extends StatelessWidget {
  final String title;
  final String genres;
  final String imageUrl;
  final String rateUrl;

  const MovieTile({
    Key? key,
    required this.title,
    required this.genres,
    required this.imageUrl,
    required this.rateUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 17,
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            margin: const EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: blueTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                genres,
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
              Container(
                width: 98,
                height: 18,
                margin: const EdgeInsets.only(top: 18),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      rateUrl,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
