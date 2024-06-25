import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_arguments.freezed.dart';

@freezed
class ChatArguments with _$ChatArguments {
  factory ChatArguments({
    required String emoji,
    required String name,
    required String pinnedText,
  }) = _ChatArguments;
}
