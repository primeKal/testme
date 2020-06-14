import 'package:flutter/material.dart';
class Question {
  String testKey;
  int value;
  List <String> allTrueFalse;
  List <int> multipeChoice;
  List <int> shortAnswer;
  String fullquestion;

  Question({this.fullquestion});


}
class TrueFalse extends Question{
  TrueFalse();
}
class MultipleChoic extends Question{
  String fullquestion;
 String choice1;
 String choice2;
 String choice3;
 String choice4;
 String choice5;

 MultipleChoic({this.choice1, this.choice2, this.choice3, this.choice4,
     this.choice5,this.fullquestion});

}
class ShortAnswer extends Question{

}