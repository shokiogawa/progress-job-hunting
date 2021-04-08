import 'package:flutter/material.dart';
import 'package:progress_job_hunting_app/view/component/draggable_widget.dart';

class StateProgressInCompanyPage extends StatefulWidget {
  @override
  _StateProgressInCompanyPageState createState() =>
      _StateProgressInCompanyPageState();
}

class _StateProgressInCompanyPageState
    extends State<StateProgressInCompanyPage> {
  List<String> lists1 = ["ドコドア", "relicsss", "smhc"];
  List<String> list2 = ["DeNA", "ヤクルト", "マツダ"];
  List<String> list3 = ["diverse", "mixe"];

  @override
  Widget build(BuildContext context) {
    List<Widget> draggableList1 =
        lists1.map((name) => DraggableWidget(name)).toList();
    List<Widget> draggableList2 =
        list2.map((name) => DraggableWidget(name)).toList();
    List<Widget> draggableList3 =
        list3.map((name) => DraggableWidget((name))).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("選考状況"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DragTargetWidget(draggableList1, Colors.amber),
            DragTargetWidget(draggableList2, Colors.blueGrey),
            DragTargetWidget(draggableList3, Colors.red)
          ],
        ),
      ),
    );
  }
}
