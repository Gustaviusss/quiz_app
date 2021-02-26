import 'package:flutter/material.dart';

class ResultSchoolar extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;


  ResultSchoolar(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 0) {
      resultText =
          'Excelente! A comunicação é a base de tudo e você sabe realmente a importância disso, vivemos rodeados por diferetes tipos de pessoas com diferentes pensamentos, mas à compreensão e o respeito é essencial para conviver com as pessoas ao nosso redor. Mas lembre-se, ninguém é 100% forte, por isso é necessário tirar um tempo para você, se cuidar e respeitar seus próprios limites.';
    } else if (resultScore <= 3) {
      //define uma frase de resultado de acordo com a pontuação total do teste
      resultText =
          'Manter um bom desempenho escolar pode ser algo complicado para muito alunos, devido as diversos fatores, pois é necessário ter muito comprometimento e força de vontade, para que isso ocorra, uma das melhores maneiras de conseguir colocar seus estudos em dia é: sempre estabelecer metas e conseguir focar nos seus objetivos e avaliar o motivo de tanto empenho e dedicação, então, com todos os motivos esclarecidos, a tarefa de cumprir as metas para alcançar os resultados esperados se torna menos exaustiva.';
    } else if (resultScore <= 6) {
      resultText =
          'O sentimento de incapacidade que pode surgir durante os estudos pode atrapalhar o rendimento escolar de um estudante, por isso é importante aplicar a inteligência emocional, que permite ter habilidade de controlar seus sentimentos para pensar de forma positiva sobre as situações, assim uma pessoa que desenvolve tal habilidade, consegue viver de forma mais equilibrada, isso fará com que os estudantes reflitam, sobre seus pensamentos e ações. Outro fator importante é estabelecer metas sobre seus estudos, mudar seus hábitos se necessário, além de estabelecer seu plano de estudo, pois uma visão mais ampla da situação pode ajudar a resolver os problemas.';
    } else {
      resultText =
          'Estabelecer uma comunicação efetiva não é uma tarefa fácil, pois um diálogo saudável resulta em um melhor rendimento dos estudantes, pois assim o aluno se sente mais acolhido e mais confiante para resolver seus problemas com a direção de ensino, por isso sempre tente manter seu posicionamento e ajude a instituição de ensino, se necessário, oferecendo sugestões de como melhorar algo que seja relevante para a escola, além de praticar interação com o corpo de ensino, para ter melhores relações interpessoais. Caso você esteja sujeito a uma situação desconfortável no ambiente escolar, ou seja, sofrendo alguma pressão psicológica ou bullying, tente não revidar e nem se isolar em momentos como esse, busque comunicar a direção da escola, pois o diálogo é a melhor solução e você não precisa enfrentar ou guardar esses problemas somente para você.';
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
                      child: Image(image: AssetImage("assets/schoolar.jpg")),
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
