import 'package:flutter/material.dart';
import 'package:testme/pages/multiplechoice.dart';
import 'package:testme/pages/newfeedpage.dart';
import 'package:testme/pages/startingpage.dart';
import 'package:testme/pages/testingpage.dart';
import 'package:testme/pages/truefalse.dart';
import 'package:testme/pages/shortanswer.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/':(context)=>StartingPage(),
      '/totestingpage':(context)=>TestingPAge(),
      '/tomultiplechoice':(context)=>MultipleChoice(),
      '/totruefalse':(context)=>TrueFalse(),
      '/toshortanswer':(context)=>ShortAnswer(),
      '/tonewsfeed':(context)=>NewsFeed(),
    },
  ));
}
