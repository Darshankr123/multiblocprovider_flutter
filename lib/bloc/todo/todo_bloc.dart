// // import "package:bloc/bloc.dart";
// // import "package:counter_bloc/bloc/todo/todo_event.dart";
// // import "package:counter_bloc/bloc/todo/todo_state.dart";
// //
// // class TodoBloc extends Bloc<TodoEvent,TodoState>{
// //
// //   final List<String> todosList = [];
// //   TodoBloc () : super(const TodoState()){
// //     on<AddToDoEvent>(_addTodo);
// //     on<RemoveToDoEvent>(_removeTodo);
// //   }
// //
// //   void _addTodo(AddToDoEvent event,Emitter<TodoState> emit){
// //     todosList.add(event.task);
// //     emit(state.copyWith(todosList: List.from(todosList)));
// //   }
// //
// //   void _removeTodo(RemoveToDoEvent event,Emitter<TodoState> emit){
// //     todosList.remove(event.task);
// //     emit(state.copyWith(todosList: List.from(todosList)));
// //   }
// // }
//
// import "package:bloc/bloc.dart";
// import "package:counter_bloc/bloc/todo/todo_event.dart";
// import "package:counter_bloc/bloc/todo/todo_state.dart";
//
// class TodoBloc extends Bloc<ToDoEvent, TodoState> {
//
//   final List<String> todoList = [];
//   TodoBloc() : super(const TodoState()) {
//     on<AddToDoEvent>(_addTodoEvent);
//     on<RemoveEvent>(_removeTodoEvent);
//   }
//
//   void _addTodoEvent(AddToDoEvent event,Emitter<TodoState> emit){
//     todoList.add(event.task);
//     emit(state.copyWith(todoList: List.from(todoList)));
//   }
//
//   void _removeTodoEvent(RemoveEvent event,Emitter<TodoState> emit){
//     todoList.remove(event.task);
//     emit(state.copyWith(todoList: List.from(todoList)));
//   }
//
// }

import "package:bloc/bloc.dart";
import "package:counter_bloc/bloc/todo/todo_event.dart";
import "package:counter_bloc/bloc/todo/todo_state.dart";

class TodoBloc extends Bloc<TodoEvent,TodoState>{

  final List<String> todoList = [];

  TodoBloc () : super(TodoState()){
    on<AddToDoEvent>(_addTodo);
    on<RemoveToDoEvent>(_removeTodo);
  }

  void _addTodo(AddToDoEvent event,Emitter<TodoState> emit){
    todoList.add(event.task);
    emit(state.copyWith(todoList: List.from(todoList)));
  }

  void _removeTodo(RemoveToDoEvent event,Emitter<TodoState> emit){
    todoList.remove(event.task);
    emit(state.copyWith(todoList: List.from(todoList)));
  }
}


