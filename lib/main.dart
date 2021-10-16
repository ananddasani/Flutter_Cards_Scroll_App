import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scrollabe Cards",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}
