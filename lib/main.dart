import 'package:flutter/material.dart';
import 'package:quiz_app/first_page.dart';
import 'package:quiz_app/screens/familiar_quiz.dart';
import 'package:quiz_app/screens/schoolar_quiz.dart';
import 'package:quiz_app/screens/social_quiz.dart';

import './screens/personal_quiz.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TO DO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/home': (context) => Home(),
        '/personal_quiz': (context) => PersonalQuiz(),
        '/social_quiz': (context) => SocialQuiz(),
        '/familiar_quiz': (context) => FamiliarQuiz(),
        '/schoolar_quiz': (context) => SchoolarQuiz()
      },
      home: FirstPage(),
    );
  }
}
// o operador ternário funciona como um if else simples, mas menos verboso:
// condição   ?   se for verdadeira executa esse bloco   :   se for falsa executa esse
