import 'package:dartz/dartz.dart';
import 'package:uniproject/shared/errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class Params<T> {
  final T data;
  Params({required this.data});
}
