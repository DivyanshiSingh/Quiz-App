import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>>questions;
  final int questionindex;
  final Function answerques;
  Quiz({@required this.questions, @required this.questionindex, @required this.answerques});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Question(questions[questionindex]['ques'],),
        ...(questions[questionindex]['ans'] as List <Map<String, Object>>).map((answer) {
          return Answer(()=> answerques(answer['score']), answer['text']);}).toList()],
        
        );    
  }
}