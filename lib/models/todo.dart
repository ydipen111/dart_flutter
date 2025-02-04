class Todo{
  final String todo;
  final bool isCompleted;

  Todo({
    required this.todo,
    required this.isCompleted
});



  Todo copyWith({String? todo, bool? isCompleted}){
    return Todo(
        todo: todo ?? this.todo,
        isCompleted: isCompleted ?? this.isCompleted);

  }

  factory Todo.add(String todo){
    return Todo(todo: todo, isCompleted: false);
  }



}