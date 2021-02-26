import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/results/result_familiar.dart';

class FamiliarQuiz extends StatefulWidget {
  FamiliarQuiz({Key key}) : super(key: key);

  @override
  _FamiliarQuizState createState() => _FamiliarQuizState();
}

class _FamiliarQuizState extends State<FamiliarQuiz> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    //questões do quiz divididas com enunciado, respostas disponíveis e pontuações pra cada resposta

    {
      'questionText': 'Você tem uma boa relação familiar?',
      'answers': [
        {'text': 'Sim', 'score': 0},
        {'text': 'Não', 'score': 2},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você costuma compartilhar seus problemas/sentimentos com sua família?',
      'answers': [
        {'text': 'Sim', 'score': 0},
        {'text': 'Não', 'score': 2},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você tem sentido falta de compreensão pelos seus familiares?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você tem sentido algum sentimento de rejeição no ambiente familiar?',
      'answers': [
        {'text': 'Sim', 'score': 2},
        {'text': 'Não', 'score': 0},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Seus pais ou responsáveis são presentes em sua vida?',
      'answers': [
        {'text': 'Sim', 'score': 0},
        {'text': 'Não', 'score': 2},
        {'text': 'Às Vezes', 'score': 1},
      ]
    },
    {
      'questionText': 'Você passa ou já passou por algum conflito familiar, que teve influência na sua vida emocional?',
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
          appBar: AppBar(title: Text('Familiar'), backgroundColor: Colors.pink[200], leading: Icon(Icons.family_restroom),),
          body: _questionIndex <
                  _questions
                      .length //operador ternário checa o estado da aplicação
              ? Quiz(
                questionColor: Colors.pink[200],
                  answerQuestion:
                      _answerQuestion, //se ainda tiver perguntas ele continua exibindo o Quiz
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : ResultFamiliar(_totalScore,
                  _resetQuiz) //se as perguntas acabaram ele mostra o Resultado
          ),
    );
  }
}
