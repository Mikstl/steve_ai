import 'package:fpdart/fpdart.dart';
import 'package:steve_ai/core/errors/exceptions.dart';
import 'package:steve_ai/core/usecase/usecase.dart';
import 'package:steve_ai/features/chat/domain/chat_repository.dart';

class SendTestUseCase implements UseCase<Stream<String>, NoParams> {
  final ChatRepository chatRepository;
  SendTestUseCase(this.chatRepository);

  @override
  Future<Either<Failure, Stream<String>>> call(NoParams params) async {
    return await chatRepository.sendTest();
  }
}
