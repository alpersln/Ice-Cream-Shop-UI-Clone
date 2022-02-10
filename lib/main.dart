import 'package:flutter/material.dart';

import 'screns/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gorgita',
        textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.black54),
            headline2: TextStyle(color: Colors.amber)),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Color.fromARGB(255, 211, 159, 177)),
            backgroundColor: Colors.transparent,
            elevation: 0),
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(),
    );
  }
}
