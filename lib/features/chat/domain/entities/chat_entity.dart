import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:steve_ai/features/chat/domain/entities/message_entity.dart';

part 'chat_entity.freezed.dart';

@freezed
class ChatEntity with _$ChatEntity {
  factory ChatEntity({
    @Default('') String name,
    @Default('') String longMemory,
    @Default([]) List<MessageEntity> messages,
  }) = _ChatEntity;
}
