import 'package:flutter/material.dart';

class NewSubject extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NewSubjectState();
  }

}

class NewSubjectState extends State<NewSubject>{
  final _formkey = GlobalKey<FormState>();
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Subject"),
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: "Subject",
              ),
              controller: myController,
              validator: (value) {
                if (value.isEmpty) {
                  return "Please fill subject";
                }
              }
            ),
            RaisedButton(
              child: Text("submit"),
              onPressed: () {
                _formkey.currentState.validate();
                if(myController.text.length > 0){
                  Navigator.pop(context);
                }
                myController.text = "";
              },
              
            ),
          ],
        ),
      ),
    );
  }

}