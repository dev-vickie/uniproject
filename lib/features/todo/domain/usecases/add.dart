import 'package:dartz/dartz.dart';
import 'package:uniproject/features/todo/domain/entities/todo.dart';
import 'package:uniproject/features/todo/domain/repositories/todo_repository.dart';
import 'package:uniproject/shared/errors/failure.dart';
import 'package:uniproject/shared/utils/usecase.dart';

class AddTodoUseCase implements UseCase<Todo, Todo> {
  final TodoRepository repository;
  AddTodoUseCase({required this.repository});

  @override
  Future<Either<Failure, Todo>> call(Todo todo) async {
    return await repository.add(todo);
  }
}
