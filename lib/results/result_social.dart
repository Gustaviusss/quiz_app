import 'package:flutter/material.dart';

class ResultSocial extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;


  ResultSocial(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 0) {
      resultText =
          'Excelente! A comunicação é a base de tudo e você sabe realmente a importância disso, vivemos rodeados por diferetes tipos de pessoas com diferentes pensamentos, mas à compreensão e o respeito é essencial para conviver com as pessoas ao nosso redor. Mas lembre-se, ninguém é 100% forte, por isso é necessário tirar um tempo para você, se cuidar e respeitar seus próprios limites.';
    } else if (resultScore <= 3) {
      //define uma frase de resultado de acordo com a pontuação total do teste
      resultText =
          'Se em alguns momentos do seu cotidiano procura manter distância de situações que coloquem você em contato com uma pessoa ou um público maior gerando certa timidez, para tentar ultrapassar e contornar essas situações, procure meios para trabalhar esse sentimento, tentando incorporar novas atividades de lazer que permitam a você encontrar novos e diferentes grupos sociais, encarar situações sociais que provocam medo, de forma gradual, ao invés de evitá-las, alterar e direcionar seus pensamentos, assim poderá ter melhores resultados em determinadas situações.';
    } else if (resultScore <= 6) {
      resultText =
          'Muitas das nossas dificuldades em manter um relacionamento saudável é provocada pela falta de compreensão entre os indivíduos, por isso, tentar entender nossas particularidades e sentimentos são importantes para estabelecermos novos relacionamentos e interagirmos mais com diferentes grupos sociais, além de dá uma chance para novos hábitos e hobbies.  Isso pode proporcionar  uma nova descoberta, ou uma reconexão com sua própria identidade.';
    } else {
      resultText =
          'Quando nos sentimos deslocados no cenário em que estamos inseridos, uma das melhores formas para resolver esse problema é tentar encarar as situações de uma  maneira menos intensa, mantenha uma mente aberta em relação aos lugares e as pessoas que estão ao seu redor, tente entender melhor as diferenças individuais das pessoas que se relacionam com você. Tente trabalhar sua autoestima e pense sobre suas qualidades, estabeleça ponte direta entre você e as pessoas que considera de confiança, a fim de poder compartilhar seus problemas e receber ajuda se for necessário.';
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
                      child: Image(image: AssetImage("assets/social.jpg")),
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
