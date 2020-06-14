import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer.dart';
import 'package:testme/controllers/dialoggenerators.dart';
import 'package:testme/entities/Test.dart';
import 'package:testme/entities/Student.dart';
class TestingPAge extends StatefulWidget {
  @override
  _TestingPAgeState createState() => _TestingPAgeState();
}
class _TestingPAgeState extends State<TestingPAge> {
  Test ll=Test(
    school: "Assai Public School",
    subject: "Biology",
  );
  Student pp=Student(name: "Kaleb Teshale",schoolId: "APS",testId: "Biology");
  TextStyle mystyle=TextStyle(
    color: Colors.blue,
    fontSize: 18,
  );
  TextStyle mybtn=TextStyle(
    color: Colors.white,
    fontSize: 20,
  );
  Color mycolrs=Colors.blue;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(ll.title),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: CountdownTimer(endTime:15948291477192,
              hoursSymbol: "Hours",
              minSymbol: "min",
              daysSymbol: "",
              defaultDays: "",
              defaultHours: "",
              defaultMin: "00",
              defaultSec: "-000",
              hoursSymbolTextStyle: TextStyle(color: mycolrs),
              minSymbolTextStyle:  TextStyle(color: mycolrs),
                  minTextStyle:  TextStyle(color: mycolrs),
              hoursTextStyle:TextStyle(color: mycolrs),
              ),

            ),
            Text("Test Information"),
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
            Text("Student Information"),  Container(
              padding: EdgeInsets.all(20),
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Name-",
                        style: TextStyle(
                            fontSize: 10,
                            color: mycolrs
                        ),
                      ),
                      Text("Kaleb Teshale",
                        style: TextStyle(
                            fontSize: 15,
                            color: mycolrs
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("ID",
                        style: TextStyle(
                            fontSize: 10,
                            color: mycolrs
                        ),
                      ),
                      Text("BDU10239",
                        style: TextStyle(
                            fontSize: 15,
                            color: mycolrs
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Class-",
                        style: TextStyle(
                            fontSize: 10,
                            color: mycolrs
                        ),
                      ),
                      Text("12 sec B",
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("10",style: mystyle,),Text(" questions",style: mystyle,),
              ]
            ),
            RaisedButton(
              elevation: 5,
                color: Colors.blue[500],
              child: Text("True/False",style: mybtn,),
                onPressed:(){
                  Navigator.pushNamed(context,"/totruefalse");
                }
              ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("10",style: mystyle,),Text(" questions",style: mystyle,),
                ]
            ),
            RaisedButton(
                elevation: 5,
                color: Colors.blue[500],
                child: Text("Short Answer",style: mybtn,),
                onPressed:(){
                  Navigator.pushNamed(context,"/toshortanswer");
                }
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("10",style: mystyle,),
                  Text(" questions",style: mystyle,),
                ]
            ),
            RaisedButton(
                elevation: 5,
                color: Colors.blue[500],
                child: Text("Multiple Choice",style: mybtn,
            ),
                onPressed:(){
                  Navigator.pushNamed(context,"/tomultiplechoice");
                }
            ),
        ]
        ),
      ),
    );
  }
}
