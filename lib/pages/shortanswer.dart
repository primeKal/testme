import 'package:flutter/material.dart';
import 'package:testme/controllers/dialoggenerators.dart';
import 'package:testme/entities/Question.dart';
import 'package:testme/entities/Test.dart';
class ShortAnswer extends StatefulWidget {
  @override
  _ShortAnswerState createState() => _ShortAnswerState();
}

class _ShortAnswerState extends State<ShortAnswer> {
  Test test=Test(school: "Assai Public Schhol",subject: "Biology");
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
                children:all.map((e) => generateshortanswer(e)).toList(),
              )
          ),
        ],
      ),
    );
  }
  Card generateshortanswer(Question l){
    return Card(
      color: Colors.white,
        shadowColor: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            child: Text(l.fullquestion,
              style: TextStyle(
                fontSize: 20,
                color:Colors.blue,
              ),
            ),
            onTap: (){
              DialogeGenerator().singleshortanswerdialogue(context, l);
            },),

        ],
      )
    );

  }
}
