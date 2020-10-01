import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TO DO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  
    var _questionIndex = 0;
    var _totalScore = 0;
    
    final _questions = const[ 
          //questões do quiz divididas com enunciado, respostas disponíveis e pontuações pra cada resposta

          {'questionText':'Qual sua cor preferida?',
          'answers':[
            {'text':'preto','score':10},
            {'text':'vermelho','score':5},
            {'text':'azul','score':3},
            {'text':'verde','score':2}
            ]
          },

          {'questionText':'Qual seu animal preferido?',
          'answers':[
            {'text':'gato','score':10},
            {'text':'cobra','score':5},
            {'text':'coelho','score':3},
            {'text':'cachorro','score':2}
            ]
          },

          {'questionText':'Qual seu filme preferido?',
          'answers':[
            {'text':'pulp fiction','score':10},
            {'text':'fight club','score':5},
            {'text':'interstellar','score':3},
            {'text':'forrest gump','score':2}
            ]
          },
    ];

     void _resetQuiz(){
       setState(() {
         _questionIndex = 0;//reseta o índice do Quiz para 0 (volta pra primeira pergunta)
         _totalScore = 0;//reinicia o Score
       }); 
    }
   
    void _answerQuestion(int score){

      _totalScore += score; //a cada alternativa escolhida adiciona a pontuação correspondente no score

      setState(() {
        _questionIndex += 1; // muda o índice da pergunta e passa pra póxima
      });
      print('answer $_questionIndex chosen');
    }

    @override
      Widget build(BuildContext context){
        
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: Text('Quiz App')),
            body: _questionIndex < _questions.length //operador ternário checa o estado da aplicação
            ? 
            Quiz( answerQuestion: _answerQuestion,//se ainda tiver perguntas ele continua exibindo o Quiz
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
            : 
            Result(_totalScore, _resetQuiz)//se as perguntas acabaram ele mostra o Resultado
           ),
          );
      }
}
// o operador ternário funciona como um if else simples, mas menos verboso:
// condição   ?   se for verdadeira executa esse bloco   :   se for falsa executa esse