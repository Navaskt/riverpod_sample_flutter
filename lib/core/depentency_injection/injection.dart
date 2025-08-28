import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tiverpod_sample_flutter/core/depentency_injection/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();
