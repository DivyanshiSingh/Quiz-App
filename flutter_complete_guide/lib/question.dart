import 'package:flutter/material.dart';
 class Question extends StatelessWidget {
   final String questionText;
   Question(this.questionText);
   @override
   Widget build(BuildContext context) {
     return Container(
       width: double.infinity,
       margin: EdgeInsets.all(15),
       child: Text(questionText, style: TextStyle( fontSize: 28, 
       fontWeight: FontWeight.bold, color:Colors.black87,),
       textAlign: TextAlign.center,
     ),);
   }
 }