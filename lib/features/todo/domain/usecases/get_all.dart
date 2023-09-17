import 'package:dartz/dartz.dart';
import 'package:uniproject/features/todo/domain/repositories/todo_repository.dart';
import 'package:uniproject/shared/errors/failure.dart';
import 'package:uniproject/shared/utils/usecase.dart';

import '../entities/todo.dart';

class GetAllTodosUsecase implements UseCase<List<Todo>, NoParams> {
  final TodoRepository repository;

  GetAllTodosUsecase(this.repository);

  @override
  Future<Either<Failure, List<Todo>>> call(NoParams params) async {
    return await repository.getAll();
  }
}
