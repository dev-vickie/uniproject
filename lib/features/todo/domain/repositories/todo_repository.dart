import 'package:uniproject/features/todo/domain/entities/todo.dart';

abstract class TodoRepository {
  //ADD TODO
  Future<Todo> add(Todo todo);
  //EDIT TODO
  Future<Todo> edit(Todo todo);
  //DELETE TODO
  Future<Todo> delete(Todo todo);
  //GET ALL TODOS
  Future<List<Todo>> getAll();
}
