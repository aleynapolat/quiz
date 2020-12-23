import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  String get resultPhrase {
    String resultText;
      if (score >= 20) {
        resultText = 'Tebrikler Puanınız';
      print(score);}
     else {
      resultText = 'Diyebilecek bir şeyim yok!';
      print(score);
    }

    return  resultText;

  }
  String _backgroundImage;
  String _setImage(){
    String resultText;
    if (score >= 20) {
      _backgroundImage = "assets/succes.jpeg";

    }
    else {

      _backgroundImage = "assets/fail.png";
    }
    print("_backgroundImage: $_backgroundImage");
    return _backgroundImage;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Sonuç '  ,textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'b',
            fontWeight: FontWeight.bold,
          ),),
      ),
      body: SizedBox(
        width: 500,
        height:500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: 200,
              height: 200,
              child: CircleAvatar(

                child: Image(
                  width: 200,
                  height: 200,
                    image: new AssetImage(_setImage())
                ),
              ),
            ),
            SizedBox(
              width:30,
              height:30,
            ),
            Text( resultPhrase, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontFamily: 'a',
              ),
            ),
            SizedBox(
              width:20,
              height:20,
            ),
            Text(
              '$score', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,  fontFamily: 'a', fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }


}
