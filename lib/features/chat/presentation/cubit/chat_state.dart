import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:steve_ai/features/chat/domain/entities/chat_entity.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.init({
    @Default(false) bool needUpdate,
    ChatEntity? chatEntity,
    @Default(0) int typeModel,
  }) = ChatInitState;

  const factory ChatState.longMemory({
    @Default(false) bool needUpdate,
    ChatEntity? chatEntity,
    @Default(0) int typeModel,
  }) = ChatLongMemoryState;

  const factory ChatState.createNewMessage({
    @Default(false) bool needUpdate,
    ChatEntity? chatEntity,
    @Default(0) int typeModel,
  }) = ChatCreatingNewMessageState;

  const factory ChatState.error({
    @Default(false) bool needUpdate,
    ChatEntity? chatEntity,
    @Default(0) int typeModel,
    required String error,
  }) = ChatErrorState;
}
