import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:testme/controllers/dialoggenerators.dart';
import 'package:testme/entities/Test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class StartingPage extends StatefulWidget {
  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  Firestore myfirestore=Firestore.instance;
  bool isOpen=false;
  Test test=Test(school: "Assai Public Schhol",subject: "is nnot working");
  Test me;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                   Container(
                     height: 200,
                     width: 200,
                     child: FlareActor("Assets/books.flr",
                  animation: "Animations",
                  ),
                   ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  showCursor: true,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    backgroundColor: Colors.grey[100],
                  ),
                  //decoration: InputDecoration.collapsed(hintText: "enter the code your teacher gave you"),
                  onChanged: (String text){
                    print("Submitted data $text");
                  },
                  onSubmitted: (String text){
                    print("Submitted data $text");
                  },
                ),
              ),
              AnimatedOpacity(
                opacity: 1,
                alwaysIncludeSemantics: true,
                duration: Duration(seconds: 2,),
                child: RaisedButton(
                  color: Colors.blue,
                  child: Text("Join Test",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  ),
                  onPressed: (){
                   // Navigator.pushNamed(context, "/totestingpage");
                  DialogeGenerator().testprofile(context, test,myfirestore);
                  },
                  elevation: 10,
                ),
              ),
              FlatButton(
                child: Text("Explore"),
                textColor: Colors.blue,
                onPressed: (){
                  Navigator.pushNamed(context,"/tonewsfeed");
                },
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
