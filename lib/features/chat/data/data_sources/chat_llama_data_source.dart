import 'dart:async';
import 'dart:convert';

import 'package:fetch_client/fetch_client.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

abstract interface class ChatLlamaDataSource {
  Future<Stream<List<int>>> sendMesage({
    required String message,
    required String systemPrompt,
  });
}

@Injectable(as: ChatLlamaDataSource)
class ChatLlamaDataSourceImpl implements ChatLlamaDataSource {
  ChatLlamaDataSourceImpl();

  final String url = 'http://192.168.31.6:8000/interact';

  Future<ByteStream> getStream(Request request) async {
    final FetchClient fetchClient = FetchClient(mode: RequestMode.cors);
    final FetchResponse response = await fetchClient.send(request);
    return response.stream;
  }

  String cleanForDivider(String tempText) {
    String finalText = '';

    int index = tempText.indexOf("/");

    if (index != -1) {
      finalText = tempText.substring(index + 1);
    } else {
      finalText = tempText;
    }

    return finalText;
  }

  @override
  Future<Stream<List<int>>> sendMesage(
      {required String message, required String systemPrompt}) async {
    StreamController<List<int>> controller = StreamController();

    http.Client client = http.Client();

    http.Request request = http.Request('PUT', Uri.parse(url));

    request.headers['Content-Type'] = 'application/json';
    request.body =
        jsonEncode({'message': message, 'system_prompt': systemPrompt});

    if (kIsWeb) {
      var response = await getStream(request);
      controller.addStream(response);
    } else {
      client.send(request).asStream().listen(
        (response) {
          response.stream.listen((value) {
            controller.add(value);
          }, onError: (error) {
            controller.addError(error);
          }, cancelOnError: true);
        },
        onError: (error) {
          controller.addError(error);
        },
      );
    }

    return controller.stream;
  }
}
