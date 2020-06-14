
import 'package:flutter/material.dart';
import 'package:testme/controllers/dialoggenerators.dart';
import 'package:testme/entities/Question.dart';
import 'package:testme/entities/Test.dart';
class TrueFalse extends StatefulWidget {
  @override
  _TrueFalseState createState() => _TrueFalseState();
}

class _TrueFalseState extends State<TrueFalse> {
  Test test=Test(school: "Assai Public Schhol",subject: "Biology");
  static const TextStyle optionStyle =
  TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue,);
  List<Question> all=[
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
    Question(fullquestion: "fdbfsdkjfsdjkfhsdkjf"),
  ];
  Color pressbutton=Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(test.title),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children:all.map((e) => generatetruefalsequestion(e)).toList(),
            )
          ),
        ],
      ),
    );
  }
  Card generatetruefalsequestion(Question l){
    return Card(
      color: Colors.white,
      shadowColor: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              DialogeGenerator().singletruefalsedialogue(context, l);
            },
            child: Column(
              children: [
                Text(l.fullquestion,
                  style: optionStyle,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child: Text("choice three"),
                      textColor: pressbutton,
                      onPressed: (){
                        setState(() {
                          pressbutton=Colors.white;
                        });
                      },
                    ),
                    FlatButton(
                      child: Text("True"),
                      textColor: pressbutton,
                      onPressed: (){
                       setState(() {
                         pressbutton=Colors.white;
                       });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
