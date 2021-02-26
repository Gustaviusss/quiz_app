import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final Color answerColor;

  Answer(this.selectHandler, this.answerText, this.answerColor);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectHandler,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: answerColor),
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text(answerText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600
              )),
        ),
      ),
    );
  }
}
