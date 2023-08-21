import 'package:dartz/dartz.dart';
import 'package:uniproject/features/todo/domain/entities/todo.dart';
import 'package:uniproject/shared/errors/failure.dart';

abstract class TodoRepository {
  Future<Either<Failure,Todo>> add(Todo todo);
  Future<Either<Failure,Todo>> edit(Todo todo);
  Future<Either<Failure,Todo>> delete(Todo todo);
  Future<Either<Failure, List<Todo>>> getAll();
}
