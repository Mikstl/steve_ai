// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEntity {
  String get name => throw _privateConstructorUsedError;
  String get longMemory => throw _privateConstructorUsedError;
  List<MessageEntity> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEntityCopyWith<ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEntityCopyWith<$Res> {
  factory $ChatEntityCopyWith(
          ChatEntity value, $Res Function(ChatEntity) then) =
      _$ChatEntityCopyWithImpl<$Res, ChatEntity>;
  @useResult
  $Res call({String name, String longMemory, List<MessageEntity> messages});
}

/// @nodoc
class _$ChatEntityCopyWithImpl<$Res, $Val extends ChatEntity>
    implements $ChatEntityCopyWith<$Res> {
  _$ChatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? longMemory = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      longMemory: null == longMemory
          ? _value.longMemory
          : longMemory // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatEntityImplCopyWith<$Res>
    implements $ChatEntityCopyWith<$Res> {
  factory _$$ChatEntityImplCopyWith(
          _$ChatEntityImpl value, $Res Function(_$ChatEntityImpl) then) =
      __$$ChatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String longMemory, List<MessageEntity> messages});
}

/// @nodoc
class __$$ChatEntityImplCopyWithImpl<$Res>
    extends _$ChatEntityCopyWithImpl<$Res, _$ChatEntityImpl>
    implements _$$ChatEntityImplCopyWith<$Res> {
  __$$ChatEntityImplCopyWithImpl(
      _$ChatEntityImpl _value, $Res Function(_$ChatEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? longMemory = null,
    Object? messages = null,
  }) {
    return _then(_$ChatEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      longMemory: null == longMemory
          ? _value.longMemory
          : longMemory // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
    ));
  }
}

/// @nodoc

class _$ChatEntityImpl implements _ChatEntity {
  _$ChatEntityImpl(
      {this.name = '',
      this.longMemory = '',
      final List<MessageEntity> messages = const []})
      : _messages = messages;

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String longMemory;
  final List<MessageEntity> _messages;
  @override
  @JsonKey()
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatEntity(name: $name, longMemory: $longMemory, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.longMemory, longMemory) ||
                other.longMemory == longMemory) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, longMemory,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      __$$ChatEntityImplCopyWithImpl<_$ChatEntityImpl>(this, _$identity);
}

abstract class _ChatEntity implements ChatEntity {
  factory _ChatEntity(
      {final String name,
      final String longMemory,
      final List<MessageEntity> messages}) = _$ChatEntityImpl;

  @override
  String get name;
  @override
  String get longMemory;
  @override
  List<MessageEntity> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
