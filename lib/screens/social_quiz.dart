import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/results/result_social.dart';

class SocialQuiz extends StatefulWidget {
  SocialQuiz({Key key}) : super(key: key);

  @override
  _SocialQuizState createState() => _SocialQuizState();
}

class _SocialQuizState extends State<SocialQuiz> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    //questões do quiz divididas com enunciado, respostas disponíveis e pontuações pra cada resposta

    {
      'questionText': 'Você tem dificuldade em se socializar?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você costuma compartilhar seus problemas/sentimentos com alguém?',
      'answers': [
        {'text': 'Sim', 'score': 0},
        {'text': 'Não', 'score': 2},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você tem sentido falta de compreensão pelas pessoas que estão ao seu redor?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você tem notado algum sentimento de não pertencimento ao lugar em que está inserido?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você se sente desvalorizado naquilo que faz pelas pessoas ao seu redor?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você se sente pressionado pelas responsabilidades que são cobradas pela pessoas? ',
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
          appBar: AppBar(title: Text('Social'),backgroundColor: Colors.grey[800],leading: Icon(Icons.people_alt_outlined),),
          body: _questionIndex <
                  _questions
                      .length //operador ternário checa o estado da aplicação
              ? Quiz(
                  questionColor: Colors.grey[800],
                  answerQuestion:
                      _answerQuestion, //se ainda tiver perguntas ele continua exibindo o Quiz
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : ResultSocial(_totalScore,
                  _resetQuiz) //se as perguntas acabaram ele mostra o Resultado
          ),
    );
  }
}
