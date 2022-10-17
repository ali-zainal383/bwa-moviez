import 'package:flutter/material.dart';
import 'package:moviez/ui/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moviez',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MainPage(),
      },
    );
  }
}
