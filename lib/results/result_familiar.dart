import 'package:flutter/material.dart';

class ResultFamiliar extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;


  ResultFamiliar(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 0) {
      resultText =
          'Excelente! A comunicação é a base de tudo e você sabe realmente a importância disso, vivemos rodeados por diferetes tipos de pessoas com diferentes pensamentos, mas à compreensão e o respeito é essencial para conviver com as pessoas ao nosso redor. Mas lembre-se, ninguém é 100% forte, por isso é necessário tirar um tempo para você, se cuidar e respeitar seus próprios limites.';
    } else if (resultScore <= 3) {
      //define uma frase de resultado de acordo com a pontuação total do teste
      resultText =
          'O diálogo é a base de tudo, mas muita das vezes dialogar com nossos familiares não é uma tarefa fácil, pois há uma divergência entre pensamentos, ações e gerações. Buscar entender o ponto de vista de cada lado é essencial para que seja possível a resolução do problema, tanto os pais quanto os filhos necessitam falar sobre o que sentem.';
    } else if (resultScore <= 6) {
      resultText =
          'Viver em um ambiente com muitos conflitos pode se tornar algo estressante para você, e para toda sua família, e às vezes o afastamento e o isolamento é a principal medida tomada. Porém as diferentes opiniões e modos distintos de encarar o mundo são comuns em qualquer relação familiar e, apesar de não serem fáceis de administrar, precisam ser respeitadas. Buscar dialogar e entender ambos os lados é a melhor forma de conseguir uma solução. ';
    } else {
      resultText =
          'A falta de comunicação, que geralmente é o fato gerador desses conflitos familiares, junto à dificuldade de solucionar os problemas familiares, pode acarretar em diversos fatores negativos para ambos os lados (pais e filhos). Se você chegou a um ponto em que o diálogo não está fluindo, é hora de procurar um psicólogo para aconselhamento familiar.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(children: <Widget>[
      Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    margin: EdgeInsets.only(bottom: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image(image: AssetImage("assets/family.jpg")),
                    ),
                  ),
                  Text(resultPhrase,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: Colors.grey[700]),
                      textAlign: TextAlign.justify)
                ],
              ))
        ],
      ),
    ]));
  }
}
