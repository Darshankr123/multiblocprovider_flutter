import 'package:counter_bloc/bloc/todo/todo_bloc.dart';
import 'package:counter_bloc/bloc/todo/todo_event.dart';
import 'package:counter_bloc/bloc/todo/todo_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class TodoScreen extends StatefulWidget {
  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  // @override
  // Widget build(context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text("Todo App")),
  //     body: BlocBuilder<TodoBloc, TodoState>(
  //       builder: (context, state) {
  //         if (state.todosList.isEmpty) {
  //           return Center(child: Text("No ToDo's found"));
  //         } else if (state.todosList.isNotEmpty) {
  //           return ListView.builder(
  //             itemCount: state.todosList.length,
  //             itemBuilder: (context, index) {
  //               return ListTile(
  //                 title: Text(state.todosList[index],),
  //                 trailing: IconButton(
  //                   onPressed: () {
  //                     context.read<TodoBloc>().add(RemoveToDoEvent(task: state.todosList[index]));
  //                   },
  //                   icon: Icon(Icons.delete),
  //                 ),
  //               );
  //             },
  //           );
  //         } else {
  //           return const SizedBox();
  //         }
  //       },
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () {
  //         for(int i=0;i<10;i++){
  //           context.read<TodoBloc>().add(AddToDoEvent(task: 'Task '+ i.toString()));
  //         }
  //       },
  //       child: Icon(Icons.add),
  //     ),
  //   );
  // }
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo App")),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todoList.isEmpty) {
            return Center(child: Text("No Todo's Found"));
          } else {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todoList[index].toString()),
                  trailing: IconButton(
                    onPressed: () {
                      context.read<TodoBloc>().add(
                        RemoveToDoEvent(task: state.todoList[index]),
                      );
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < 5; i++) {
            context.read<TodoBloc>().add(
              AddToDoEvent(task: 'task - $i'.toString()),
            );
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
