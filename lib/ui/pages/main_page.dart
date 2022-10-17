import 'package:flutter/material.dart';
import 'package:moviez/shared/theme.dart';
import 'package:moviez/ui/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const HomePage();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: buildContent(),
    );
  }
}
