import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  final String name;

  DraggableWidget(this.name);

  @override
  Widget build(BuildContext context) {
    return Draggable(
        data: name,
        onDragCompleted: () {
          print("Targetにきた" + name);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        childWhenDragging: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
        feedback: Container(
          width: 350,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),);
  }
}

class DragTargetWidget extends StatelessWidget {
  final List<Widget> draggableList;
  final Color color;

  DragTargetWidget(this.draggableList, this.color);

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, accepted, rejected) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [...draggableList],
          ),
          height: 200,
          color: color,
        );
      },
      onAccept: (value) {},
    );
  }
}
