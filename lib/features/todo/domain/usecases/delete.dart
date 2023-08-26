import 'package:dartz/dartz.dart';
import 'package:uniproject/features/todo/domain/entities/todo.dart';
import 'package:uniproject/features/todo/domain/repositories/todo_repository.dart';
import 'package:uniproject/shared/errors/failure.dart';
import 'package:uniproject/shared/utils/usecase.dart';

class DeleteTodoUseCase implements UseCase<Todo, Params<Todo>> {
  final TodoRepository repository;
  DeleteTodoUseCase({required this.repository});

  @override
  Future<Either<Failure, Todo>> call(Params params) async {
    return await repository.delete(params.data);
  }
}
