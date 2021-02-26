import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/results/schoolar_result.dart';

class SchoolarQuiz extends StatefulWidget {
  SchoolarQuiz({Key key}) : super(key: key);

  @override
  _SchoolarQuizState createState() => _SchoolarQuizState();
}

class _SchoolarQuizState extends State<SchoolarQuiz> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    //questões do quiz divididas com enunciado, respostas disponíveis e pontuações pra cada resposta

    {
      'questionText': 'Você tem tido dificuldade de concentração nos estudos ou qualquer outra atividade?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você se considera incapaz de realizar suas atividades escolares? ',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você já sofreu ou sofre bullying no ambiente escolar ?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você tem dificuldade de manter seu desempenho escolar?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você se comunica com a direção escolar quando tem alguma dificuldade?',
      'answers': [
        {'text': 'Sim', 'score': 0},
        {'text': 'Não', 'score': 2},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você tem facilidade de se socializar na escola? ',
      'answers': [
        {'text': 'Sim', 'score': 0},
        {'text': 'Não', 'score': 2},
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
          appBar: AppBar(title: Text('Escolar'), backgroundColor: Colors.orange[300],leading: Icon(Icons.school),),
          body: _questionIndex <
                  _questions
                      .length //operador ternário checa o estado da aplicação
              ? Quiz(
                questionColor: Colors.orange[300],
                  answerQuestion:
                      _answerQuestion, //se ainda tiver perguntas ele continua exibindo o Quiz
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : ResultSchoolar(_totalScore,
                  _resetQuiz) //se as perguntas acabaram ele mostra o Resultado
          ),
    );
  }
}
