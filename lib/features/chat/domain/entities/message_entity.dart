import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@freezed
class MessageEntity with _$MessageEntity {
  factory MessageEntity({
    @Default('') String type,
    @Default('') String title,
    @Default('') String text,
    @Default('') String color,
    @Default('') String dateTime,
    @Default('') String imageURL,
  }) = _MessageEntity;
}
