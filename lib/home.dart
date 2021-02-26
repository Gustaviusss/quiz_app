import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void changeRoute(String route){
      Navigator.of(context).pushNamed(route);
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Categorias'),
          leading: Container(padding: EdgeInsets.all(7), child: Image.asset('assets/icon.png')),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue[50], Colors.orange[50]])
            ),
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 50),
                children: <Widget>[
                  Center(
                    child: GestureDetector(
                      onTap: (){changeRoute('/personal_quiz');},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[300]),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Icon(Icons.person,
                                    size: 36, color: Colors.white)),
                            Text(
                              'Pessoal',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 36,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){changeRoute('/social_quiz');},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[800]),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Icon(Icons.people_alt_outlined,
                                    size: 36, color: Colors.white)),
                            Text(
                              'Social',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 36,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){changeRoute('/familiar_quiz');},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink[200]),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Icon(Icons.family_restroom,
                                    size: 36, color: Colors.white)),
                            Text(
                              'Familiar',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 36,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){changeRoute('/schoolar_quiz');},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange[300]),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Icon(Icons.school,
                                    size: 36, color: Colors.white)),
                            Text(
                              'Escolar',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 36,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}