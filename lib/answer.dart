import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectHandler,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue),
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text(answerText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal)),
        ),
      ),
    );
  }
}
