import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  } 
}

class MainPageState extends State<MainPage> {
  int _state = 0;

  @override
  Widget build(BuildContext context) {

    final List list_button = <Widget>[
      IconButton(
          icon: Icon(Icons.add),
          onPressed: (){
            Navigator.pushNamed(context, "/newsubject");
            },
          ),
      IconButton(
          icon: Icon(Icons.delete),
          onPressed: (){
            
            },
          ),
    ];

    return DefaultTabController(
      length: 2,
      initialIndex: _state,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Todo"),
          actions: <Widget>[
            _state == 0 ? list_button[0] : list_button[1]
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _state,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.assignment),
                title: Text("Task"),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.assignment_turned_in),
                title: Text("Complete"),
              ),
            ],
            onTap: (index){
              setState(() {
                _state = index;
              });
              print(_state);
            }
          ),
        body: _state == 0 ? 
        Container(
          child: Text("1"),
        ) 
        :
        Container(
          child: Text("2"),
        )
        ),  
    );
  }

}