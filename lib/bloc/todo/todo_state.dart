// // import 'package:equatable/equatable.dart';
// //
// // class TodoState extends Equatable {
// //   final List<String> todosList;
// //
// //   const TodoState({this.todosList = const []});
// //
// //   TodoState copyWith({List<String>? todosList}) {
// //     return TodoState(todosList: todosList ?? this.todosList);
// //   }
// //
// //   @override
// //   List<Object?> get props => [todosList];
// // }
//
//
// import "package:equatable/equatable.dart";
//
// class TodoState extends Equatable {
//   final List<String> todosList;
//
//   const TodoState({ this.todosList = const []});
//
//   TodoState copyWith({List<String>? todoList}){
//     return TodoState(todosList: todoList ?? this.todosList);
//   }
//
//   @override
//   List<Object?> get props => [todosList];
// }

import "package:equatable/equatable.dart";

class TodoState extends Equatable{

  List<String> todoList;

  TodoState({this.todoList = const []});

  TodoState copyWith({List<String>? todoList}){
    return TodoState(todoList: todoList ?? this.todoList);
  }

  @override
  List<Object?> get props => throw UnimplementedError();

}