import 'package:flutter/material.dart';
import 'package:moviez/shared/theme.dart';

class PopularCard extends StatelessWidget {
  final String title;
  final String genres;
  final String imageUrl;
  final String imageRateUrl;

  const PopularCard({
    Key? key,
    required this.title,
    required this.genres,
    required this.imageUrl,
    required this.imageRateUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 279,
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 200,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                ],
              ),
              Container(
                width: 98,
                height: 18,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      imageRateUrl,
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
