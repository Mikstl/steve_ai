import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:steve_ai/core/get_it/get_it.config.dart';

GetIt locator = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
void configureDependenciesGetIt() => locator.init();
