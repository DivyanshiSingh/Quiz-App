import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    String resultText;
    if(resultScore<=20){
      resultText='You are ...Strange?!';
    }
    else if(resultScore<=35){
      resultText='You are Pretty likeable!';
    }
    else{
      resultText='You are awesome and innocent!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: <Widget>[
      Text(
        resultPhrase, 
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 40),
        textAlign: TextAlign.center,
        ),
    FlatButton(child: Text('Restart Quiz!!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)), onPressed:resetHandler, textColor:Colors.blueAccent),
    ],)
    );
      
    
  }
}