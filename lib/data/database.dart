import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // refrence hive box
  final _myBox = Hive.box('myBox');

  // run this method if it is the first time ever openning the app
  void creatInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load data from data base
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update data in data base
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
