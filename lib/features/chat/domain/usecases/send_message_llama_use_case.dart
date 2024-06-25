import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:steve_ai/core/errors/exceptions.dart';
import 'package:steve_ai/core/usecase/usecase.dart';
import 'package:steve_ai/features/chat/domain/chat_repository.dart';

@injectable
class SendMessageLlamaUseCase
    implements UseCase<Stream<List<int>>, SendMessageLlamaParams> {
  final ChatRepository chatRepository;
  const SendMessageLlamaUseCase(this.chatRepository);

  @override
  Future<Either<Failure, Stream<List<int>>>> call(
      SendMessageLlamaParams params) async {
    return await chatRepository.sendMessageByLlama(
      systemPrompt: params.systemPrompt,
      message: params.message,
    );
  }
}

class SendMessageLlamaParams {
  final String systemPrompt;
  final String message;

  SendMessageLlamaParams({
    required this.systemPrompt,
    required this.message,
  });
}
