


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/models/todo.dart';

final todoProvider = NotifierProvider<TodoProvider,List<Todo>>(()=>TodoProvider());

class TodoProvider extends Notifier<List<Todo>>{
  @override
  List<Todo>build(){
    return [
      Todo(todo: 'Todo first word', isCompleted: false)
    ];
  }
  void addTodo(Todo todo){
    // state.add(todo);
    state = [...state, todo];
  }
  void deleteTodo(Todo todo){
    state.remove(todo);
    state = [...state];
  }

  void updateTodo(Todo newTodo, bool val){
    state = [
      // for(final todo in state) todo == newTodo
      //     ? newTodo.copyWith(isCompleted: val) : todo

for(final todo in state)
todo == newTodo
? Todo(todo: newTodo.todo, isCompleted: val) : todo


    ];
  }

}


// for(final todo in state)
// todo == newTodo
// ? Todo(todo: newTodo.todo, isCompleted: val) : todo