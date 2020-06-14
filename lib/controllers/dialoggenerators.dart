import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testme/entities/Question.dart';
import 'package:testme/entities/Test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testme/entities/Student.dart';
class DialogeGenerator  {
  DialogeGenerator();
  Color mycolrs=Colors.blue;
  Test ll=Test(
    school: "Assai Public School",
    subject: "Biology",
  );
  Student ppp=Student(name: "Kaleb Teshale",schoolId: "APS",testId: "Biology");
  Future<bool> testprofile(context,Test p, Firestore pp) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          pp.collection("TestMeApp").document("Test");
          return Dialog(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,

                  child: FlareActor(
                    "Assets/books.flr",
                    animation: "Animations",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Text(p.title,
                      style: TextStyle(
                        fontSize: 25,
                        color: mycolrs,
                      ),
                      ),
                ),
                    StreamBuilder(
                      stream: Firestore.instance.collection("Test").snapshots(),
                      builder: (context, snapshot) {
                        if(!snapshot.hasData){
                          return  LimitedBox(
                            maxHeight: 100,
                            child: FlareActor(
                            "Assets/loading.flr",
                            animation: "Alarm",
                            fit: BoxFit.fill,
                        ),
                          );}
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text("school-",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: mycolrs
                                    ),
                                  ),
                                  Text(snapshot.data.documents[0]["school"],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: mycolrs
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("value-",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: mycolrs
                                    ),
                                  ),
                                  Text(snapshot.data.documents[0]["totalvalue"].toString(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: mycolrs
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("date(mm/dd//yy)-",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: mycolrs
                                    ),
                                  ),
                                  Text(snapshot.data.documents[0]["testdate"],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: mycolrs
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("title-",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: mycolrs
                                    ),
                                  ),
                                  Text(snapshot.data.documents[0]["title"],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: mycolrs
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                    ),
                RaisedButton(
                  elevation: 5,
                  child: Text("Join",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                  ),
                  onPressed: (){
                   Navigator.pushNamed(context,"/totestingpage");
                  },
                  color: mycolrs,
                ),
                FlatButton(
                  padding: EdgeInsets.all(20),
                  child: Text("Cancel"),
                  textColor: Colors.blue,
                  onPressed: (){
                    Navigator.pop(context);

                  },
                ),

              ],
            ),
          );
        }
    );
  }

  Future<bool> singletruefalsedialogue(context, Question l){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Question 1",style: TextStyle(
                    fontSize: 15,
                    color: mycolrs
                ),),
                Text(l.fullquestion,style: TextStyle(
                    fontSize: 10,
                    color: mycolrs
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: Text("True",style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("False",style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      color: Colors.blue,
                      onPressed: (){

                      },
                    )
                  ],
                )
              ],
            ),
          );
        }
    );
  }

  Future<bool> singleMultilecgoicedialogue(context,MultipleChoic l){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
            child: Column(
              children: [
                Text("Question 1",style: TextStyle(
                fontSize: 15,
                color: mycolrs
            ),),
                Text(l.fullquestion,style: TextStyle(
                fontSize: 10,
                color: mycolrs
                ),
                ),
                Row(
                  children: [
                    RaisedButton(
                      child: Text(l.choice1,style: TextStyle(
                        color: Colors.white,
                      ),),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text(l.choice2,style: TextStyle(
                    color: Colors.white,
                    ),),
                      color: Colors.blue,
                      onPressed: (){

                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    RaisedButton(
                      child: Text(l.choice4,style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text(l.choice3,style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      color: Colors.blue,
                      onPressed: (){

                      },
                    )
                  ],
                ),
              ],
            ),
          );
        }
    );
  }

  Future<bool> singleshortanswerdialogue(context,Question l){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
            child: Column(
              children: [
                Text("Question 1"),
                Text(l.fullquestion),
               TextField(
                 decoration: InputDecoration.collapsed(hintText: "enter your answer"),
               ),
              ],
            ),
          );
        }
    );
  }
  Future<bool> regStudent(context, Test ll,Student pp){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
            child: Column(
              children: [
                Container(child: Text("Attendance"),
                 color: Colors.blue,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.grey[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("school-",
                            style: TextStyle(
                                fontSize: 10,
                                color: mycolrs
                            ),
                          ),
                          Text(ll.school,
                            style: TextStyle(
                                fontSize: 15,
                                color: mycolrs
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Subject-",
                            style: TextStyle(
                                fontSize: 10,
                                color: mycolrs
                            ),
                          ),
                          Text(ll.subject,
                            style: TextStyle(
                                fontSize: 15,
                                color: mycolrs
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("date(mm/dd//yy)-",
                            style: TextStyle(
                                fontSize: 10,
                                color: mycolrs
                            ),
                          ),
                          Text(ll.testdate,
                            style: TextStyle(
                                fontSize: 15,
                                color: mycolrs
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("name"),
                    TextField(
                      decoration: InputDecoration.collapsed(hintText: "enter your answer"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("id"),
                    TextField(
                      decoration: InputDecoration.collapsed(hintText: "enter your answer"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("section"),
                    TextField(
                      decoration: InputDecoration.collapsed(hintText: "enter your answer"),
                    ),
                  ],
                ),

               RaisedButton(
                    color: Colors.blue,
                    child: Text("Attend",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, "/totestingpage");
                    },
                    elevation: 10,
                ),
                FlatButton(
                  child: Text("back"),
                  textColor: Colors.blue,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        }
      );
    }
}