// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatArguments {
  String get emoji => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pinnedText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatArgumentsCopyWith<ChatArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatArgumentsCopyWith<$Res> {
  factory $ChatArgumentsCopyWith(
          ChatArguments value, $Res Function(ChatArguments) then) =
      _$ChatArgumentsCopyWithImpl<$Res, ChatArguments>;
  @useResult
  $Res call({String emoji, String name, String pinnedText});
}

/// @nodoc
class _$ChatArgumentsCopyWithImpl<$Res, $Val extends ChatArguments>
    implements $ChatArgumentsCopyWith<$Res> {
  _$ChatArgumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? name = null,
    Object? pinnedText = null,
  }) {
    return _then(_value.copyWith(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pinnedText: null == pinnedText
          ? _value.pinnedText
          : pinnedText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatArgumentsImplCopyWith<$Res>
    implements $ChatArgumentsCopyWith<$Res> {
  factory _$$ChatArgumentsImplCopyWith(
          _$ChatArgumentsImpl value, $Res Function(_$ChatArgumentsImpl) then) =
      __$$ChatArgumentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emoji, String name, String pinnedText});
}

/// @nodoc
class __$$ChatArgumentsImplCopyWithImpl<$Res>
    extends _$ChatArgumentsCopyWithImpl<$Res, _$ChatArgumentsImpl>
    implements _$$ChatArgumentsImplCopyWith<$Res> {
  __$$ChatArgumentsImplCopyWithImpl(
      _$ChatArgumentsImpl _value, $Res Function(_$ChatArgumentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? name = null,
    Object? pinnedText = null,
  }) {
    return _then(_$ChatArgumentsImpl(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pinnedText: null == pinnedText
          ? _value.pinnedText
          : pinnedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatArgumentsImpl implements _ChatArguments {
  _$ChatArgumentsImpl(
      {required this.emoji, required this.name, required this.pinnedText});

  @override
  final String emoji;
  @override
  final String name;
  @override
  final String pinnedText;

  @override
  String toString() {
    return 'ChatArguments(emoji: $emoji, name: $name, pinnedText: $pinnedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatArgumentsImpl &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pinnedText, pinnedText) ||
                other.pinnedText == pinnedText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji, name, pinnedText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatArgumentsImplCopyWith<_$ChatArgumentsImpl> get copyWith =>
      __$$ChatArgumentsImplCopyWithImpl<_$ChatArgumentsImpl>(this, _$identity);
}

abstract class _ChatArguments implements ChatArguments {
  factory _ChatArguments(
      {required final String emoji,
      required final String name,
      required final String pinnedText}) = _$ChatArgumentsImpl;

  @override
  String get emoji;
  @override
  String get name;
  @override
  String get pinnedText;
  @override
  @JsonKey(ignore: true)
  _$$ChatArgumentsImplCopyWith<_$ChatArgumentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
