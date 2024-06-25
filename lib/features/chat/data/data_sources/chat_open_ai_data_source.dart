import 'dart:async';
import 'package:dart_openai/dart_openai.dart';
import 'package:injectable/injectable.dart';
import 'package:steve_ai/core/secrets/app_secrets.dart';

abstract interface class ChatOpenAiDataSource {
  Future<Stream<OpenAIStreamChatCompletionModel>> sendMesage(
      {required String message,
      required String systemPrompt,
      required List<OpenAIChatCompletionChoiceMessageModel> lastMessages});
}

@Injectable(as: ChatOpenAiDataSource)
class ChatOpenAiDataSourceImpl implements ChatOpenAiDataSource {
  ChatOpenAiDataSourceImpl();

  @override
  Future<Stream<OpenAIStreamChatCompletionModel>> sendMesage(
      {required String message,
      required String systemPrompt,
      required List<OpenAIChatCompletionChoiceMessageModel>
          lastMessages}) async {
    OpenAI.apiKey = AppSecrets.openAiKey;

    final systemMessage = OpenAIChatCompletionChoiceMessageModel(
      content: [
        OpenAIChatCompletionChoiceMessageContentItemModel.text(systemPrompt),
      ],
      role: OpenAIChatMessageRole.system,
    );

    final userMessage = OpenAIChatCompletionChoiceMessageModel(
      content: [
        OpenAIChatCompletionChoiceMessageContentItemModel.text(
          message,
        ),
      ],
      role: OpenAIChatMessageRole.user,
    );

    lastMessages.add(systemMessage);
    lastMessages.add(userMessage);

    final chatStream = OpenAI.instance.chat.createStream(
      model: "gpt-4o",
      messages: lastMessages,
    );

    return chatStream;
  }
}
