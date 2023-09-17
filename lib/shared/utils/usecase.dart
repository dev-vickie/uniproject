import 'package:dartz/dartz.dart';
import 'package:uniproject/shared/errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

//Generic class to pass as params in the usecase class
//Used to differentiate params from return types especially if they are of the same type
class Params<T> {
  final T data;
  Params({required this.data});
}

class NoParams<T> {
  final void data;
  NoParams({required this.data});
}
