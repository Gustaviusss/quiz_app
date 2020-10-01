import 'package:flutter/material.dart';

import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  
  Quiz({this.questions,this.answerQuestion,this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'],),
                
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){//esxporta as perguntas como um objeto e mapeia 
          return Answer(() => answerQuestion(answer['score']),answer['text']);            //pra usar todos os dados dentro dela            
        }).toList() //transforma os dados mapeados em uma lista pra preencherem as respostas do Quiz 
      ]
    );
  }
}