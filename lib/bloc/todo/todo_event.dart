// // import "package:equatable/equatable.dart";
// //
// // abstract class TodoEvent extends Equatable{}
// //
// // class AddToDoEvent extends TodoEvent{
// //
// //   final String task;
// //
// //   AddToDoEvent({required this.task});
// //
// //   @override
// //   List<Object?> get props => [task];
// // }
// //
// // class RemoveToDoEvent extends TodoEvent{
// //
// //   final Object task;
// //
// //   RemoveToDoEvent({required this.task});
// //
// //   @override
// //   List<Object?> get props => [task];
// // }
//
// import "package:equatable/equatable.dart";
//
// abstract class ToDoEvent extends Equatable {}
//
// class AddToDoEvent extends ToDoEvent {
//   final String task;
//
//   AddToDoEvent({required this.task});
//
//   @override
//   List<Object?> get props => [task];
// }
//
// class RemoveEvent extends ToDoEvent {
//
//   final Object task;
//
//   RemoveEvent({required this.task});
//   @override
//   List<Object?> get props => [];
// }

import "package:equatable/equatable.dart";

abstract class TodoEvent extends Equatable{}

class AddToDoEvent extends TodoEvent{

  final String task;

  AddToDoEvent({required this.task});

  @override
  List<Object?> get props => [];

}

class RemoveToDoEvent extends TodoEvent{

  final Object task;

  RemoveToDoEvent({required this.task});

  @override
  List<Object?> get props => [];

}