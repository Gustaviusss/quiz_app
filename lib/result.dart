import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      //define uma frase de resultado de acordo com a pontuação total do teste
      resultText = 'você é pouco brabo';
    } else if (resultScore <= 20) {
      resultText =
          'você é meio brabojuhfygagfedahubdsuyfayhweuanchwayfgyasduyfygaywhegfhaydgfbhagbdhfugdwygfayudbfbuyaysgfubadbfuyagweyugawey8bcbdyscyabdfahdsoyfabhfoyuagoyfsdygsyigrywqergewgrywebfhbewgfgqywefguyagwyfuybdyfgewjrgqyegyfgehbfyeghyufbqwjhebfugwefywehbfyugeygfjhwegbuybyecnuyqgewybfuhbewcuyhewygfuywegbfyugyuewgyughasergoidhsuyafgbdshbafusgdyfgysdgaityftyfv';
    } else {
      resultText = 'você é brabíssimo';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Image(image: AssetImage("assets/help.jpeg")),
                        ),
                      ),
                      Text(resultPhrase,
                          style: TextStyle(
                              fontFamily: 'Roboto-Medium',
                              fontSize: 18,
                              color: Colors.grey[600]),
                          textAlign: TextAlign.center)
                    ],
                  ))
            ],
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 20),
              child: FlatButton(
                  child: Text(
                    'Faz de novo, faz',
                    style: TextStyle(
                        fontFamily: 'Roboto-Medium', color: Colors.white),
                  ),
                  onPressed: resetHandler))
        ]));
  }
}
