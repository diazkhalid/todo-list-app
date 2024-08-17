import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final Todo todo;
  final onTodoChaged;
  final onDeleteItem;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onTodoChaged,
      required this.onDeleteItem});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
          onTap: () => {onTodoChaged(todo)},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
                fontSize: 16,
                color: tdBlack,
                decoration: todo.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              onPressed: () => {onDeleteItem(todo.id)},
              icon: const Icon(Icons.delete),
              color: Colors.white,
              iconSize: 18,
            ),
          ),
        ));
  }
}
