//
//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:garrage_nepal/models/todo.dart';
//
//
//
// final DOxProvider = NotifierProvider<DOx, List<Todo>>
// class DOx extends Notifier{
//   @override
//   List<Todo>build() {
//     return[
//       Todo(todo: "is doing good", isCompleted: false);
//
//     ];
//     void addTodo(Todo todo){
//       state = [...state, todo];
//     }
//
//     void removeTodo(Todo todo){
//       state.remove(todo);
//       state =[...state];
//     }
//
//   }
// }