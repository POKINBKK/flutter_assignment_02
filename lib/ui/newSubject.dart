import 'package:flutter/material.dart';
import 'package:flutter_assignment_02/db/todoDB.dart';


class NewSubject extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NewSubjectState();
  }

}

class NewSubjectState extends State<NewSubject>{
  final _formkey = GlobalKey<FormState>();
  final myController = TextEditingController();
  TodoCRUD todo = TodoCRUD();

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
              onPressed: () async {
                _formkey.currentState.validate();
                if(myController.text.length > 0){
                  await todo.open("todo.db");
                  Todo data = Todo();
                  data.todoItem = myController.text;
                  data.isDone = false;
                  await todo.insert(data);
                  print(data);
                  print('insert complete');
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