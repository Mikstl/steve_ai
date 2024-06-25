import 'package:dart_openai/dart_openai.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:steve_ai/core/errors/exceptions.dart';
import 'package:steve_ai/core/errors/failures.dart';
import 'package:steve_ai/core/utils/connection_checker.dart';
import 'package:steve_ai/features/chat/data/data_sources/chat_llama_data_source.dart';
import 'package:steve_ai/features/chat/data/data_sources/chat_open_ai_data_source.dart';
import 'package:steve_ai/features/chat/domain/chat_repository.dart';

@Injectable(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(this.chatLlamaDataSource, this.connectionChecker,
      this.chatOpenAiDataSource);

  final ChatLlamaDataSource chatLlamaDataSource;
  final ChatOpenAiDataSource chatOpenAiDataSource;

  final ConnectionChecker connectionChecker;

  @override
  Future<Either<Failure, Stream<List<int>>>> sendMessageByLlama({
    required String systemPrompt,
    required String message,
  }) async {
    try {
      if (await (connectionChecker.isConnected)) {
        final stream = await chatLlamaDataSource.sendMesage(
            message: message, systemPrompt: systemPrompt);
        return right(stream);
      }
    } on ServerException catch (e) {
      return left(Failure(e.message));
    } catch (_) {
      return left(Failure(_.toString()));
    }
    return left(Failure('App Llama Error'));
  }

  @override
  Future<Either<Failure, Stream<String>>> sendTest() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Stream<OpenAIStreamChatCompletionModel>>>
      sendMessageByOpenAi(
          {required String systemPrompt,
          required String message,
          required List<OpenAIChatCompletionChoiceMessageModel>
              lastMessages}) async {
    try {
      if (await (connectionChecker.isConnected)) {
        final stream = await chatOpenAiDataSource.sendMesage(
            message: message,
            systemPrompt: systemPrompt,
            lastMessages: lastMessages);
        return right(stream);
      }
    } catch (_) {
      return left(Failure(_.toString()));
    }

    return left(Failure('App OpenAI Error'));
  }
}
