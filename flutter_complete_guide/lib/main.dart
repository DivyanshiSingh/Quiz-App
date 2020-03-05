import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  var _questionindex=0;
  var _totoalScore=0;

  void _resetQuiz(){
    setState(() {
      _questionindex=0;
      _totoalScore=0;
    });
  }
  void _answerques(int score){
    _totoalScore +=score;
    setState(() {
    _questionindex=_questionindex+1;
    
  });
    print(_questionindex);
  }
  @override
  Widget build(BuildContext context) {
    var _questions=[{'ques':'What\'s your favourite color?',
    'ans':[{'text':'black' ,'score':15},
    {'text':'red','score':5},
    {'text':'white','score':10}]},

    {'ques':'What\'s your favourite animal?',
    'ans':[{'text':'dog' ,'score':15},
    {'text':'elephant','score':10},
    {'text':'cat','score':5}]}, 

    {'ques':'what\'s your favourite car?',
    'ans':[{'text':'bughati' ,'score':15},
    {'text':'audi','score':5},
    {'text':'porsche','score':10}],},];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionindex< _questions.length ? 
          Quiz(questions: _questions, 
          questionindex: _questionindex,
          answerques: _answerques)
         : Result(_totoalScore, _resetQuiz),

      ),
    );
  }
}

