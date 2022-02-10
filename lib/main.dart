import 'package:flutter/material.dart';

import 'screns/home_page.dart';
import 'utils/constants.dart';

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
        fontFamily: myFontFamily,
        textTheme:
            const TextTheme(bodyText2: myBodyText2, headline2: myHeadline2),
        appBarTheme: const AppBarTheme(
            iconTheme: myAppBarIconTheme,
            backgroundColor: myAppBarBackgroundColor,
            elevation: 0),
        primarySwatch: myPrimarySwatch,
      ),
      home: const HomePage(),
    );
  }
}
