import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  //this list will contain the names of programming language
  List<String> images = [
    "assets/language/Cpp.png",
    "assets/language/CSS.png",
    "assets/language/HTML.png",
    "assets/language/Java.png",
    "assets/language/JS.png",
    "assets/language/PY.png",
  ];

  //this list will contain the names of programming language
  List<String> language = [
    "C++",
    "CSS",
    "HTML",
    "Java",
    "JS",
    "Python",
  ];

  //this list will contain description of the programming language
  List<String> description = [
    "C++ was developed by Bjarne Stroustrup at Bell Laboratories over a period startin",
    "CSS was first proposed by Håkon Wium Lie on October 10, 1994. At the time, Lie was working with Tim Berners-Lee at CERN. ... Style sheets have existed in one form or another since the beginnings of Standard Generalized Markup Language (SGML) in the 1980s.",
    "HTML was created by Sir Tim Berners-Lee in late 1991 but was not released officially, published in 1995 as HTML 2.0. HTML 4.01 was published in late 1999 and was a major version of HTML.",
    "Java was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle) and released in 1995",
    "JavaScript was invented by Brendan Eich in 1995. It was developed for Netscape 2, and became the ECMA-262 standard in 1997.",
    "Python was conceived in the late 1980s by Guido van Rossum at Centrum Wiskunde & Informatica (CWI) in the Netherlands in December 1989.",
  ];

  Widget customCard(String IMAGE, String LANGUAGE, String DESCRIPTION,
      MaterialColor backColor, Color textColor) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Material(
        color: backColor,
        borderRadius: BorderRadius.circular(25),
        elevation: 10,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(75),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: ClipOval(
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(IMAGE),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  LANGUAGE,
                  style: TextStyle(
                    color: textColor,
                    fontFamily: "Cursive",
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  DESCRIPTION,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language Cards"),
      ),
      body: ListView(
        children: [
          customCard(images[0], language[0], description[0], Colors.lightBlue,
              Colors.white),
          customCard(images[1], language[1], description[1], Colors.blue,
              Colors.white),
          customCard(images[2], language[2], description[2], Colors.orange,
              Colors.white),
          customCard(images[3], language[3], description[3], Colors.blue,
              Colors.white),
          customCard(images[4], language[4], description[4], Colors.yellow,
              Colors.white),
          customCard(images[5], language[5], description[5], Colors.green,
              Colors.white),
        ],
      ),
    );
  }
}
