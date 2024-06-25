import 'package:dart_openai/dart_openai.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:steve_ai/core/errors/exceptions.dart';
import 'package:steve_ai/core/usecase/usecase.dart';
import 'package:steve_ai/features/chat/domain/chat_repository.dart';
import 'package:steve_ai/features/chat/domain/entities/message_entity.dart';

@injectable
class SendMessageOpenAiUseCase
    implements
        UseCase<Stream<OpenAIStreamChatCompletionModel>,
            SendMessageOpenAiParams> {
  final ChatRepository chatRepository;
  const SendMessageOpenAiUseCase(this.chatRepository);

  @override
  Future<Either<Failure, Stream<OpenAIStreamChatCompletionModel>>> call(
      SendMessageOpenAiParams params) async {
    List<OpenAIChatCompletionChoiceMessageModel> messagesForOpenAI = [];

    for (var message in params.messages) {
      messagesForOpenAI.add(OpenAIChatCompletionChoiceMessageModel(
        content: [
          OpenAIChatCompletionChoiceMessageContentItemModel.text(
            message.text,
          ),
        ],
        role: message.type == '0'
            ? OpenAIChatMessageRole.user
            : OpenAIChatMessageRole.system,
      ));
    }

    return await chatRepository.sendMessageByOpenAi(
        systemPrompt: params.systemPrompt,
        message: params.message,
        lastMessages: messagesForOpenAI);
  }
}

class SendMessageOpenAiParams {
  final String systemPrompt;
  final String message;
  final List<MessageEntity> messages;

  SendMessageOpenAiParams({
    required this.messages,
    required this.systemPrompt,
    required this.message,
  });
}
