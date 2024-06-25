// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  bool get needUpdate => throw _privateConstructorUsedError;
  ChatEntity? get chatEntity => throw _privateConstructorUsedError;
  int get typeModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        init,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        longMemory,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        createNewMessage,
    required TResult Function(bool needUpdate, ChatEntity? chatEntity,
            int typeModel, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitState value) init,
    required TResult Function(ChatLongMemoryState value) longMemory,
    required TResult Function(ChatCreatingNewMessageState value)
        createNewMessage,
    required TResult Function(ChatErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitState value)? init,
    TResult? Function(ChatLongMemoryState value)? longMemory,
    TResult? Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult? Function(ChatErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitState value)? init,
    TResult Function(ChatLongMemoryState value)? longMemory,
    TResult Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult Function(ChatErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({bool needUpdate, ChatEntity? chatEntity, int typeModel});

  $ChatEntityCopyWith<$Res>? get chatEntity;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needUpdate = null,
    Object? chatEntity = freezed,
    Object? typeModel = null,
  }) {
    return _then(_value.copyWith(
      needUpdate: null == needUpdate
          ? _value.needUpdate
          : needUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      chatEntity: freezed == chatEntity
          ? _value.chatEntity
          : chatEntity // ignore: cast_nullable_to_non_nullable
              as ChatEntity?,
      typeModel: null == typeModel
          ? _value.typeModel
          : typeModel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatEntityCopyWith<$Res>? get chatEntity {
    if (_value.chatEntity == null) {
      return null;
    }

    return $ChatEntityCopyWith<$Res>(_value.chatEntity!, (value) {
      return _then(_value.copyWith(chatEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatInitStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatInitStateImplCopyWith(
          _$ChatInitStateImpl value, $Res Function(_$ChatInitStateImpl) then) =
      __$$ChatInitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool needUpdate, ChatEntity? chatEntity, int typeModel});

  @override
  $ChatEntityCopyWith<$Res>? get chatEntity;
}

/// @nodoc
class __$$ChatInitStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatInitStateImpl>
    implements _$$ChatInitStateImplCopyWith<$Res> {
  __$$ChatInitStateImplCopyWithImpl(
      _$ChatInitStateImpl _value, $Res Function(_$ChatInitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needUpdate = null,
    Object? chatEntity = freezed,
    Object? typeModel = null,
  }) {
    return _then(_$ChatInitStateImpl(
      needUpdate: null == needUpdate
          ? _value.needUpdate
          : needUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      chatEntity: freezed == chatEntity
          ? _value.chatEntity
          : chatEntity // ignore: cast_nullable_to_non_nullable
              as ChatEntity?,
      typeModel: null == typeModel
          ? _value.typeModel
          : typeModel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatInitStateImpl implements ChatInitState {
  const _$ChatInitStateImpl(
      {this.needUpdate = false, this.chatEntity, this.typeModel = 0});

  @override
  @JsonKey()
  final bool needUpdate;
  @override
  final ChatEntity? chatEntity;
  @override
  @JsonKey()
  final int typeModel;

  @override
  String toString() {
    return 'ChatState.init(needUpdate: $needUpdate, chatEntity: $chatEntity, typeModel: $typeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatInitStateImpl &&
            (identical(other.needUpdate, needUpdate) ||
                other.needUpdate == needUpdate) &&
            (identical(other.chatEntity, chatEntity) ||
                other.chatEntity == chatEntity) &&
            (identical(other.typeModel, typeModel) ||
                other.typeModel == typeModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, needUpdate, chatEntity, typeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatInitStateImplCopyWith<_$ChatInitStateImpl> get copyWith =>
      __$$ChatInitStateImplCopyWithImpl<_$ChatInitStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        init,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        longMemory,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        createNewMessage,
    required TResult Function(bool needUpdate, ChatEntity? chatEntity,
            int typeModel, String error)
        error,
  }) {
    return init(needUpdate, chatEntity, typeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
  }) {
    return init?.call(needUpdate, chatEntity, typeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(needUpdate, chatEntity, typeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitState value) init,
    required TResult Function(ChatLongMemoryState value) longMemory,
    required TResult Function(ChatCreatingNewMessageState value)
        createNewMessage,
    required TResult Function(ChatErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitState value)? init,
    TResult? Function(ChatLongMemoryState value)? longMemory,
    TResult? Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult? Function(ChatErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitState value)? init,
    TResult Function(ChatLongMemoryState value)? longMemory,
    TResult Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult Function(ChatErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ChatInitState implements ChatState {
  const factory ChatInitState(
      {final bool needUpdate,
      final ChatEntity? chatEntity,
      final int typeModel}) = _$ChatInitStateImpl;

  @override
  bool get needUpdate;
  @override
  ChatEntity? get chatEntity;
  @override
  int get typeModel;
  @override
  @JsonKey(ignore: true)
  _$$ChatInitStateImplCopyWith<_$ChatInitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatLongMemoryStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatLongMemoryStateImplCopyWith(_$ChatLongMemoryStateImpl value,
          $Res Function(_$ChatLongMemoryStateImpl) then) =
      __$$ChatLongMemoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool needUpdate, ChatEntity? chatEntity, int typeModel});

  @override
  $ChatEntityCopyWith<$Res>? get chatEntity;
}

/// @nodoc
class __$$ChatLongMemoryStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatLongMemoryStateImpl>
    implements _$$ChatLongMemoryStateImplCopyWith<$Res> {
  __$$ChatLongMemoryStateImplCopyWithImpl(_$ChatLongMemoryStateImpl _value,
      $Res Function(_$ChatLongMemoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needUpdate = null,
    Object? chatEntity = freezed,
    Object? typeModel = null,
  }) {
    return _then(_$ChatLongMemoryStateImpl(
      needUpdate: null == needUpdate
          ? _value.needUpdate
          : needUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      chatEntity: freezed == chatEntity
          ? _value.chatEntity
          : chatEntity // ignore: cast_nullable_to_non_nullable
              as ChatEntity?,
      typeModel: null == typeModel
          ? _value.typeModel
          : typeModel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatLongMemoryStateImpl implements ChatLongMemoryState {
  const _$ChatLongMemoryStateImpl(
      {this.needUpdate = false, this.chatEntity, this.typeModel = 0});

  @override
  @JsonKey()
  final bool needUpdate;
  @override
  final ChatEntity? chatEntity;
  @override
  @JsonKey()
  final int typeModel;

  @override
  String toString() {
    return 'ChatState.longMemory(needUpdate: $needUpdate, chatEntity: $chatEntity, typeModel: $typeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLongMemoryStateImpl &&
            (identical(other.needUpdate, needUpdate) ||
                other.needUpdate == needUpdate) &&
            (identical(other.chatEntity, chatEntity) ||
                other.chatEntity == chatEntity) &&
            (identical(other.typeModel, typeModel) ||
                other.typeModel == typeModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, needUpdate, chatEntity, typeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLongMemoryStateImplCopyWith<_$ChatLongMemoryStateImpl> get copyWith =>
      __$$ChatLongMemoryStateImplCopyWithImpl<_$ChatLongMemoryStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        init,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        longMemory,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        createNewMessage,
    required TResult Function(bool needUpdate, ChatEntity? chatEntity,
            int typeModel, String error)
        error,
  }) {
    return longMemory(needUpdate, chatEntity, typeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
  }) {
    return longMemory?.call(needUpdate, chatEntity, typeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
    required TResult orElse(),
  }) {
    if (longMemory != null) {
      return longMemory(needUpdate, chatEntity, typeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitState value) init,
    required TResult Function(ChatLongMemoryState value) longMemory,
    required TResult Function(ChatCreatingNewMessageState value)
        createNewMessage,
    required TResult Function(ChatErrorState value) error,
  }) {
    return longMemory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitState value)? init,
    TResult? Function(ChatLongMemoryState value)? longMemory,
    TResult? Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult? Function(ChatErrorState value)? error,
  }) {
    return longMemory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitState value)? init,
    TResult Function(ChatLongMemoryState value)? longMemory,
    TResult Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult Function(ChatErrorState value)? error,
    required TResult orElse(),
  }) {
    if (longMemory != null) {
      return longMemory(this);
    }
    return orElse();
  }
}

abstract class ChatLongMemoryState implements ChatState {
  const factory ChatLongMemoryState(
      {final bool needUpdate,
      final ChatEntity? chatEntity,
      final int typeModel}) = _$ChatLongMemoryStateImpl;

  @override
  bool get needUpdate;
  @override
  ChatEntity? get chatEntity;
  @override
  int get typeModel;
  @override
  @JsonKey(ignore: true)
  _$$ChatLongMemoryStateImplCopyWith<_$ChatLongMemoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatCreatingNewMessageStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatCreatingNewMessageStateImplCopyWith(
          _$ChatCreatingNewMessageStateImpl value,
          $Res Function(_$ChatCreatingNewMessageStateImpl) then) =
      __$$ChatCreatingNewMessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool needUpdate, ChatEntity? chatEntity, int typeModel});

  @override
  $ChatEntityCopyWith<$Res>? get chatEntity;
}

/// @nodoc
class __$$ChatCreatingNewMessageStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatCreatingNewMessageStateImpl>
    implements _$$ChatCreatingNewMessageStateImplCopyWith<$Res> {
  __$$ChatCreatingNewMessageStateImplCopyWithImpl(
      _$ChatCreatingNewMessageStateImpl _value,
      $Res Function(_$ChatCreatingNewMessageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needUpdate = null,
    Object? chatEntity = freezed,
    Object? typeModel = null,
  }) {
    return _then(_$ChatCreatingNewMessageStateImpl(
      needUpdate: null == needUpdate
          ? _value.needUpdate
          : needUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      chatEntity: freezed == chatEntity
          ? _value.chatEntity
          : chatEntity // ignore: cast_nullable_to_non_nullable
              as ChatEntity?,
      typeModel: null == typeModel
          ? _value.typeModel
          : typeModel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatCreatingNewMessageStateImpl implements ChatCreatingNewMessageState {
  const _$ChatCreatingNewMessageStateImpl(
      {this.needUpdate = false, this.chatEntity, this.typeModel = 0});

  @override
  @JsonKey()
  final bool needUpdate;
  @override
  final ChatEntity? chatEntity;
  @override
  @JsonKey()
  final int typeModel;

  @override
  String toString() {
    return 'ChatState.createNewMessage(needUpdate: $needUpdate, chatEntity: $chatEntity, typeModel: $typeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCreatingNewMessageStateImpl &&
            (identical(other.needUpdate, needUpdate) ||
                other.needUpdate == needUpdate) &&
            (identical(other.chatEntity, chatEntity) ||
                other.chatEntity == chatEntity) &&
            (identical(other.typeModel, typeModel) ||
                other.typeModel == typeModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, needUpdate, chatEntity, typeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCreatingNewMessageStateImplCopyWith<_$ChatCreatingNewMessageStateImpl>
      get copyWith => __$$ChatCreatingNewMessageStateImplCopyWithImpl<
          _$ChatCreatingNewMessageStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        init,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        longMemory,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        createNewMessage,
    required TResult Function(bool needUpdate, ChatEntity? chatEntity,
            int typeModel, String error)
        error,
  }) {
    return createNewMessage(needUpdate, chatEntity, typeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
  }) {
    return createNewMessage?.call(needUpdate, chatEntity, typeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
    required TResult orElse(),
  }) {
    if (createNewMessage != null) {
      return createNewMessage(needUpdate, chatEntity, typeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitState value) init,
    required TResult Function(ChatLongMemoryState value) longMemory,
    required TResult Function(ChatCreatingNewMessageState value)
        createNewMessage,
    required TResult Function(ChatErrorState value) error,
  }) {
    return createNewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitState value)? init,
    TResult? Function(ChatLongMemoryState value)? longMemory,
    TResult? Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult? Function(ChatErrorState value)? error,
  }) {
    return createNewMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitState value)? init,
    TResult Function(ChatLongMemoryState value)? longMemory,
    TResult Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult Function(ChatErrorState value)? error,
    required TResult orElse(),
  }) {
    if (createNewMessage != null) {
      return createNewMessage(this);
    }
    return orElse();
  }
}

abstract class ChatCreatingNewMessageState implements ChatState {
  const factory ChatCreatingNewMessageState(
      {final bool needUpdate,
      final ChatEntity? chatEntity,
      final int typeModel}) = _$ChatCreatingNewMessageStateImpl;

  @override
  bool get needUpdate;
  @override
  ChatEntity? get chatEntity;
  @override
  int get typeModel;
  @override
  @JsonKey(ignore: true)
  _$$ChatCreatingNewMessageStateImplCopyWith<_$ChatCreatingNewMessageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatErrorStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatErrorStateImplCopyWith(_$ChatErrorStateImpl value,
          $Res Function(_$ChatErrorStateImpl) then) =
      __$$ChatErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool needUpdate, ChatEntity? chatEntity, int typeModel, String error});

  @override
  $ChatEntityCopyWith<$Res>? get chatEntity;
}

/// @nodoc
class __$$ChatErrorStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatErrorStateImpl>
    implements _$$ChatErrorStateImplCopyWith<$Res> {
  __$$ChatErrorStateImplCopyWithImpl(
      _$ChatErrorStateImpl _value, $Res Function(_$ChatErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needUpdate = null,
    Object? chatEntity = freezed,
    Object? typeModel = null,
    Object? error = null,
  }) {
    return _then(_$ChatErrorStateImpl(
      needUpdate: null == needUpdate
          ? _value.needUpdate
          : needUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      chatEntity: freezed == chatEntity
          ? _value.chatEntity
          : chatEntity // ignore: cast_nullable_to_non_nullable
              as ChatEntity?,
      typeModel: null == typeModel
          ? _value.typeModel
          : typeModel // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatErrorStateImpl implements ChatErrorState {
  const _$ChatErrorStateImpl(
      {this.needUpdate = false,
      this.chatEntity,
      this.typeModel = 0,
      required this.error});

  @override
  @JsonKey()
  final bool needUpdate;
  @override
  final ChatEntity? chatEntity;
  @override
  @JsonKey()
  final int typeModel;
  @override
  final String error;

  @override
  String toString() {
    return 'ChatState.error(needUpdate: $needUpdate, chatEntity: $chatEntity, typeModel: $typeModel, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatErrorStateImpl &&
            (identical(other.needUpdate, needUpdate) ||
                other.needUpdate == needUpdate) &&
            (identical(other.chatEntity, chatEntity) ||
                other.chatEntity == chatEntity) &&
            (identical(other.typeModel, typeModel) ||
                other.typeModel == typeModel) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, needUpdate, chatEntity, typeModel, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatErrorStateImplCopyWith<_$ChatErrorStateImpl> get copyWith =>
      __$$ChatErrorStateImplCopyWithImpl<_$ChatErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        init,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        longMemory,
    required TResult Function(
            bool needUpdate, ChatEntity? chatEntity, int typeModel)
        createNewMessage,
    required TResult Function(bool needUpdate, ChatEntity? chatEntity,
            int typeModel, String error)
        error,
  }) {
    return error(needUpdate, chatEntity, typeModel, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult? Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
  }) {
    return error?.call(needUpdate, chatEntity, typeModel, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        init,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        longMemory,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel)?
        createNewMessage,
    TResult Function(bool needUpdate, ChatEntity? chatEntity, int typeModel,
            String error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(needUpdate, chatEntity, typeModel, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitState value) init,
    required TResult Function(ChatLongMemoryState value) longMemory,
    required TResult Function(ChatCreatingNewMessageState value)
        createNewMessage,
    required TResult Function(ChatErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitState value)? init,
    TResult? Function(ChatLongMemoryState value)? longMemory,
    TResult? Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult? Function(ChatErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitState value)? init,
    TResult Function(ChatLongMemoryState value)? longMemory,
    TResult Function(ChatCreatingNewMessageState value)? createNewMessage,
    TResult Function(ChatErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatErrorState implements ChatState {
  const factory ChatErrorState(
      {final bool needUpdate,
      final ChatEntity? chatEntity,
      final int typeModel,
      required final String error}) = _$ChatErrorStateImpl;

  @override
  bool get needUpdate;
  @override
  ChatEntity? get chatEntity;
  @override
  int get typeModel;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ChatErrorStateImplCopyWith<_$ChatErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
