import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.orange[100], Colors.cyan[100]])),
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(top:10, left:50, right: 50, bottom: 10),
                child: Image.asset('assets/icon.png')),
              Text(
                'Psicovida',
                style: TextStyle(
                  fontFamily: 'RocknRollOne',
                  fontSize: 46,
                  color: Colors.grey[800],
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.grey,
                      offset: Offset(7.0, 7.0),
                    ),
                  ],
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient:
                            LinearGradient(colors: [Colors.red, Colors.blue])),
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.only(top: 70),
                    child: Center(
                      child: Text(
                        'Iniciar Quiz',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontFamily: 'RocknRollOne',
                          fontStyle: FontStyle.normal
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
