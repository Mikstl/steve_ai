// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:steve_ai/core/router/go_router.dart' as _i6;
import 'package:steve_ai/core/utils/connection_checker.dart' as _i5;
import 'package:steve_ai/features/chat/data/chat_repository_impl.dart' as _i8;
import 'package:steve_ai/features/chat/data/data_sources/chat_llama_data_source.dart'
    as _i3;
import 'package:steve_ai/features/chat/data/data_sources/chat_open_ai_data_source.dart'
    as _i4;
import 'package:steve_ai/features/chat/domain/chat_repository.dart' as _i7;
import 'package:steve_ai/features/chat/domain/usecases/send_message_llama_use_case.dart'
    as _i9;
import 'package:steve_ai/features/chat/domain/usecases/send_message_open_ai_use_case.dart'
    as _i10;
import 'package:steve_ai/features/chat/presentation/cubit/chat_cubit.dart'
    as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ChatLlamaDataSource>(() => _i3.ChatLlamaDataSourceImpl());
    gh.factory<_i4.ChatOpenAiDataSource>(() => _i4.ChatOpenAiDataSourceImpl());
    gh.factory<_i5.ConnectionChecker>(() => _i5.ConnectionCheckerImpl());
    gh.singleton<_i6.RouteGenerator>(_i6.RouteGenerator());
    gh.factory<_i7.ChatRepository>(() => _i8.ChatRepositoryImpl(
          gh<_i3.ChatLlamaDataSource>(),
          gh<_i5.ConnectionChecker>(),
          gh<_i4.ChatOpenAiDataSource>(),
        ));
    gh.factory<_i9.SendMessageLlamaUseCase>(
        () => _i9.SendMessageLlamaUseCase(gh<_i7.ChatRepository>()));
    gh.factory<_i10.SendMessageOpenAiUseCase>(
        () => _i10.SendMessageOpenAiUseCase(gh<_i7.ChatRepository>()));
    gh.factory<_i11.ChatCubit>(() => _i11.ChatCubit(
          gh<_i9.SendMessageLlamaUseCase>(),
          gh<_i10.SendMessageOpenAiUseCase>(),
        ));
    return this;
  }
}
