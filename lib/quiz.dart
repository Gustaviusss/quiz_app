import 'package:flutter/material.dart';

import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final Color questionColor;

  Quiz({this.questions, this.answerQuestion, this.questionIndex, this.questionColor});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Question(
        questions[questionIndex]['questionText'],
      ),
      Column(
        children: <Widget>[
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            //esxporta as perguntas como um objeto e mapeia
            return Answer(() => answerQuestion(answer['score']),
                answer['text'], questionColor); //pra usar todos os dados dentro dela
          }).toList()
        ],
      ) //transforma os dados mapeados em uma lista pra preencherem as respostas do Quiz
    ]);
  }
}
