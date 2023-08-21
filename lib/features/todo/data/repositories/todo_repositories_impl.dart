import 'package:dartz/dartz.dart';
import 'package:uniproject/features/todo/data/database/todo_remote_database.dart';
import 'package:uniproject/features/todo/domain/entities/todo.dart';
import 'package:uniproject/features/todo/domain/repositories/todo_repository.dart';
import 'package:uniproject/shared/errors/failure.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDatabase remoteDatabase;
  TodoRepositoryImpl({required this.remoteDatabase});

  @override
  Future<Either<Failure, Todo>> add(Todo todo) async {
    try {
      final result = await remoteDatabase.addTodo(todo);
      return Right(result);
    } catch (e) {
      return Left(
        Failure("Something went wrong while adding todo"),
      );
    }
  }

  @override
  Future<Either<Failure, Todo>> delete(Todo todo) async {
    try {
      final result = await remoteDatabase.deleteTodo(todo);
      return Right(result);
    } catch (e) {
      return Left(
        Failure("Something went wrong while deleting todo"),
      );
    }
  }

  @override
  Future<Either<Failure, Todo>> edit(Todo todo) async {
    try {
      final result = await remoteDatabase.editTodo(todo);
      return Right(result);
    } catch (e) {
      return Left(
        Failure("Something went wrong while editing todo"),
      );
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getAll() async {
    try {
      final result = await remoteDatabase.getAllTodos();
      return Right(result);
    } catch (e) {
      return Left(
        Failure("Something went wrong while listing all todos"),
      );
    }
  }
}
