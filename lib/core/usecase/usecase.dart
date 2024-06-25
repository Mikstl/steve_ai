import 'package:fpdart/fpdart.dart';
import 'package:steve_ai/core/errors/exceptions.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}

class NoParams {}
