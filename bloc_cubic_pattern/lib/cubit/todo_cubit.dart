import 'package:bloc/bloc.dart';

part 'todo_state.dart';

class Todo {
  static List<String> data = [
    'Do Somthing nice for someone I care about',
    'Memorize the fifty states ant their capitals',
    'Contribute code or a monetary donation to an open-source software project',
    'Invite some fridends over for a game night',
    'Research a topic interested in',
    'Draw and color a Mandala',
    'Create a cookbook with favourite recipes',
    'Improve touch typing',
    'Learn Scientific Python'
  ];
}

class TodoCubit extends Cubit<TodoInitial> {
  TodoCubit() : super(TodoInitial(todos: Todo.data));
  addNewTodo(String todo) {
    final todoList = state.todos; //state will work like getter
    todoList.add(todo);
    emit(TodoInitial(todos: todoList));
  }


    deleteTodo(int index) {
    final todoList = state.todos; //state will work like getter
    todoList.removeAt(index);
    emit(TodoInitial(todos: todoList));
  }
}
