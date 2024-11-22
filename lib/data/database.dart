import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //reference the box
  final _myBox = Hive.box("myBox");

// run if this is the first time opening the app, ever
  void createIniialData() {
    toDoList = [
      ["Learn flutter", true],
      ["Understand it", false],
      ["Be Good at it", false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
