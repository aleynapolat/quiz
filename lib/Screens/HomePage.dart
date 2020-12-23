import 'package:cetquiz_app/Screens/QuizPage.dart';
import 'package:cetquiz_app/Screens/QuizPage_1.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}
void gotoQuizPage_1(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage_1()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 74, 142,1.0),

        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset(
        'images/b.png',
        fit: BoxFit.contain,
        height: 25,
      ),

          Container(
           padding: const EdgeInsets.all(8.0), child: Text('BOĞAZİÇİ UNIVERSITY',
           style: TextStyle(fontFamily: 'b',color:Colors.white),
          )
         ),],),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Text(
                ' Hoşgeldin, başarıya ulaşmak için zordan daha zor olana doğru soruları çözmeye başlayın lütfen.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'a',
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
            color: Color.fromRGBO(237, 237, 237,1.0),
          ),
          SizedBox(
            height: 60,
          ),
          RaisedButton(
            color: Color.fromRGBO(19, 74, 142,1.0),
            onPressed: () {
              gotoQuizPage(context);
            },
            child: Text('ZOR',style: TextStyle(color:Colors.white,fontFamily: 'a',),),
          ),
          RaisedButton(
            color: Color.fromRGBO(19, 74, 142,1.0),
            onPressed: () {
              gotoQuizPage_1(context);
            },
            child: Text('DAHA ZOR', style: TextStyle(color:Colors.white,fontFamily: 'a',),
          ),),
         ],

      ),
     // backgroundColor: Color.fromRGBO(237, 237, 237,1.0),
    );
  }
}
