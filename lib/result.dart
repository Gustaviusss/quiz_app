import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    String resultText;
    if(resultScore <= 8){ //define uma frase de resultado de acordo com a pontuação total do teste
      resultText = 'você é pouco brabo';
    }else if(resultScore <= 20){
      resultText = 'você é meio brabo';
    } else{
      resultText = 'você é brabíssimo';
    }
    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(child: 
      Column(
        children: <Widget>[
          Text(resultPhrase,
          style: TextStyle(fontSize: 36,
          color: Colors.purple),
          textAlign: TextAlign.center),

          FlatButton(child: Text('Faz de novo, faz'),onPressed: resetHandler)
        ]
      )); 
  }
}