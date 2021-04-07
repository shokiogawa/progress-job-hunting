import 'package:flutter/material.dart';

class StateProgressInCompanyPage extends StatefulWidget {
  @override
  _StateProgressInCompanyPageState createState() => _StateProgressInCompanyPageState();
}

class _StateProgressInCompanyPageState extends State<StateProgressInCompanyPage> {
  List<String> lists1 = ["ドコドア", "relicsss", "smhc"];
  List<String> list2 = ["DeNA", "ヤクルト", "マツダ"];
  List<String> list3 = ["diverse", "mixe"];
  @override
  Widget build(BuildContext context) {
    List<Widget> draggableList1 = lists1
        .map((name) => Draggable(
      data: name,
            onDragCompleted: () {
              print("Targetにきた" + name);
            },
            child: Card(
              child: Text(name),
            ),
            childWhenDragging: Card(
              child: Text(
                name,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            feedback: Card(child: Text(name))))
        .toList();
    List<Widget> draggableList2 = list2
        .map((name) => Draggable(
            child: Card(
              child: Text(name),
            ),
            feedback: Card(child: Text(name))))
        .toList();
    List<Widget> draggableList3 = list3
        .map((name) => Draggable(
            child: Card(
              child: Text(name),
            ),
            feedback: Card(child: Text(name))))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("選考状況"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.orangeAccent,
              child: Column(
                children: [...draggableList1],
              ),
            ),
            DragTarget(
              builder: (context, accepted, rejected){
                return Container(
                  child: Column(
                    children: [...draggableList2],
                  ),
                  height: 200,
                  color: Colors.blueGrey,
                );
              },
              onAccept: (value){
                setState(() {
                  // lists1.removeAt(0);
                  // list2.add(value);
                });
                print(lists1.length.toString());
              },
            ),
            Container(
              child: Column(
                children: [...draggableList3],
              ),
              height: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
