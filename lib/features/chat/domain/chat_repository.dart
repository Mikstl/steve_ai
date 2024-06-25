import 'package:dart_openai/dart_openai.dart';
import 'package:fpdart/fpdart.dart';
import 'package:steve_ai/core/errors/exceptions.dart';

abstract interface class ChatRepository {
  Future<Either<Failure, Stream<List<int>>>> sendMessageByLlama({
    required String systemPrompt,
    required String message,
  });

  Future<Either<Failure, Stream<OpenAIStreamChatCompletionModel>>>
      sendMessageByOpenAi({
    required String systemPrompt,
    required String message,
    required List<OpenAIChatCompletionChoiceMessageModel> lastMessages,
  });

  Future<Either<Failure, Stream<String>>> sendTest();
}
