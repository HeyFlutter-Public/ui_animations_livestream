import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() async => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'Hero Animation';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage(
          title: title,
        ),
      );
}
