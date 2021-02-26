import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;


  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 0) {
      resultText =
          'Excelente! A comunicação é a base de tudo e você sabe realmente a importância disso, vivemos rodeados por diferetes tipos de pessoas com diferentes pensamentos, mas à compreensão e o respeito é essencial para conviver com as pessoas ao nosso redor. Mas lembre-se, ninguém é 100% forte, por isso é necessário tirar um tempo para você, se cuidar e respeitar seus próprios limites.';
    } else if (resultScore <= 3) {
      //define uma frase de resultado de acordo com a pontuação total do teste
      resultText =
          'Busque tirar momentos relaxantes, como ler um bom livro, tomar um banho demorado, escutar uma boa música, concentrar seus pensamentos mais no presente e menos em problemas ou coisas futuras. Viva um dia de cada vez!';
    } else if (resultScore <= 6) {
      resultText =
          'Grande parte das dificuldades que sentimos ao tentar resolver problemas pessoais, está relacionada com a dificuldade em identificar o problema e as suas causas, por isso, tente definir o problema da forma mais clara possível, para que você possa identificar o que realmente seja problema e o que pode ser relevado. Ninguém funciona direito quando não consegue controlar os seus próprios sentimentos, então não tenha vergonha de tirar um tempo do seu dia para respirar, organizar seus pensamentos e se recompor.';
    } else {
      resultText =
          'Muitas pessoas costumam não falar o que sentem por achar que aqueles ao seu redor sabem bem o que acontece com eles, ou seja, adivinham o que sentem, muitas vezes achando que pode ser besteira. Isso normalmente ocorre nas famílias ou com amigos mais próximos. O pensamento negativo também prejudica o processo, ao ponto de a pessoa considerar que não há motivos para falar dos sentimentos por achar que não há solução. Esse sentimento gera muita tristeza devido à visão negativa que traz e acaba por paralisar o indivíduo, prejudicando assim as atividades do dia a dia que antes eram normais, mas, que hoje são mais difíceis de lidar. A dificuldade em falar dos seus sentimentos requer ajuda, pois, em todos os casos pode trazer uma série de prejuízos. O tratamento com um psicólogo é bastante efetivo, à medida que ele vai te ajudar a buscar soluções que possam te ajudar a ter uma ótima qualidade de vida.';
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
                    height: 170,
                    margin: EdgeInsets.only(bottom: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image(image: AssetImage("assets/personal.jpg")),
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
