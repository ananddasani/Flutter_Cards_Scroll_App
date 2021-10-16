import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scroll_cards_app/pages/card_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _iconAnimaionController;
  late Animation<double> _iconAnimaion;

  @override
  void initState() {
    super.initState();

    _iconAnimaionController =
        new AnimationController(vsync: this, duration: Duration(seconds: 1));

    _iconAnimaion = CurvedAnimation(
        parent: _iconAnimaionController, curve: Curves.slowMiddle);

    _iconAnimaion.addListener(
      () => this.setState(() {}),
    );

    _iconAnimaionController.forward();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => CardPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 40.0,
              ),
              FlutterLogo(
                size: _iconAnimaion.value * 150,
              ),
              SizedBox(
                height: 80.0,
              ),
              CircleAvatar(
                radius: _iconAnimaion.value * 100.0,
                backgroundImage: AssetImage("assets/anand snap.png"),
              ),
              SizedBox(
                height: 80.0,
              ),
              Text(
                "Language Cards App",
                textScaleFactor: 2.0,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Cursive",
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
