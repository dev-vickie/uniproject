import 'package:uniproject/features/todo/domain/entities/todo.dart';
import 'package:uniproject/features/todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository{
  @override
  Future<Todo> add(Todo todo) async{
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<Todo> delete(Todo todo) async{
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Todo> edit(Todo todo) async{
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getAll() async{
    // TODO: implement getAll
    throw UnimplementedError();
  }
}