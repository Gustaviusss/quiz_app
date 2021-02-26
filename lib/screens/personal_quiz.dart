import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/results/result_personal.dart';

class PersonalQuiz extends StatefulWidget {
  PersonalQuiz({Key key}) : super(key: key);

  @override
  _PersonalQuizState createState() => _PersonalQuizState();
}

class _PersonalQuizState extends State<PersonalQuiz> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    //questões do quiz divididas com enunciado, respostas disponíveis e pontuações pra cada resposta

    {
      'questionText': 'Você tem sentido insônia ultimamente? ',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você tem se sentido ansioso?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você tem alguma mania quando está ansioso?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você está se sentido triste ultimamente?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você usa o celular como refúgio de seus problemas?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você se irrita com facilidade?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex =
          0; //reseta o índice do Quiz para 0 (volta pra primeira pergunta)
      _totalScore = 0; //reinicia o Score
    });
  }

  void _answerQuestion(int score) {
    _totalScore +=
        score; //a cada alternativa escolhida adiciona a pontuação correspondente no score

    setState(() {
      _questionIndex += 1; // muda o índice da pergunta e passa pra póxima
    });
    print('answer $_questionIndex chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(leading: Icon(Icons.person), title: Text('Pessoal')),
          body: _questionIndex <
                  _questions
                      .length //operador ternário checa o estado da aplicação
              ? Quiz(
                  questionColor: Colors.blue,
                  answerQuestion:
                      _answerQuestion, //se ainda tiver perguntas ele continua exibindo o Quiz
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore,
                  _resetQuiz) //se as perguntas acabaram ele mostra o Resultado
          ),
    );
  }
}
