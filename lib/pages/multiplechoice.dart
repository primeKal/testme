import 'package:flutter/material.dart';
import 'package:testme/controllers/dialoggenerators.dart';
import 'package:testme/entities/Question.dart';
class MultipleChoice extends StatefulWidget {
  @override
  _MultipleChoiceState createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  TextStyle choicestyle=TextStyle(
  fontSize: 10,
  color: Colors.white
  );
  TextStyle questionstyle=TextStyle(
      fontSize: 15,
      color: Colors.blue
  );
  Color pressbuttin=Colors.blue;
  List<Question> all=[
    Question(fullquestion: "List and explain the difference between what our know what you feel"),
    Question(fullquestion: "List and explain the difference between what our know what you feel"),
    Question(fullquestion: "List and explain the difference between what our know what you feel"),
    Question(fullquestion: "List and explain the difference between what our know what you feel"),
    Question(fullquestion: "List and explain the difference between what our know what you feel"),
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
              title: Text("Biology Test-MultipleChoice"),
              centerTitle: true,
            ),
          ),
         SliverToBoxAdapter(
           child: Container(
             color: Colors.white,
             child: Column(
               children: all.map((e) => generateMultiple(e)).toList(),
             ),
           )
         ),
        ],
      ),
    );
  }
  Card generateMultiple(Question l){
    return Card(
      color: Colors.white,
      shadowColor: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            child: Column(
              children: [
                Text(l.fullquestion,
                  style: TextStyle(
                    fontSize: 20,
                    color:Colors.blue,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child: Text("choice one"),
                      textColor: pressbuttin,
                      onPressed: (){
                        setState(() {
                          pressbuttin=Colors.white;
                        });
                      },
                    ),
                    FlatButton(
                      child: Text("Choice 2"),
                      textColor: Colors.blue,
                      onPressed: (){
                       setState(() {
                         pressbuttin=Colors.white;
                       });

                      },
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child: Text("choice three"),
                      textColor: pressbuttin,
                      onPressed: (){

                        setState(() {
                          pressbuttin=Colors.white;
                        });
                      },
                    ),
                    FlatButton(
                      child: Text("Choice four"),
                      textColor: pressbuttin,
                      onPressed: (){
                       setState(() {
                         pressbuttin=Colors.white;
                       });
                      },
                    ),
                  ],
                ),
              ],
            ),

            onTap: (){
              MultipleChoic ll=MultipleChoic(
                  choice1: "love",choice2: "hate",choice3: "famiy",choice4: "me",choice5: "haha none",fullquestion: l.fullquestion
              );
              DialogeGenerator().singleMultilecgoicedialogue(context, ll);
            },
          ),
        ],
      ),
    );
  }
}
