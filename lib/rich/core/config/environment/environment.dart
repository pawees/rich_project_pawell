import 'package:flutter/foundation.dart';
import 'package:rich_project_pawell/rich/core/config/app_config.dart';

import 'build_types.dart';

class Enviroment {

  BuildType buildType;
  AppConfig appConfig;

  Enviroment({required this.buildType, required this.appConfig});

  /// Is this application running in debug mode.
  bool get isDebug => buildType == BuildType.debug;

  /// Is this application running in release mode.
  bool get isRelease => buildType == BuildType.release;

  ///Get url
  String get url => appConfig.url;

  ///Get proxyUrl
  String get proxy_url => appConfig.url;

}

/// Environment configuration.
class Environment<T>  {
  static Environment? _instance;
  final BuildType _currentBuildType;

  /// Configuration.
  T get config => _config.value;

  set config(T c) => _config.value = c;

  /// Is this application running in debug mode.
  bool get isDebug => _currentBuildType == BuildType.debug;

  /// Is this application running in release mode.
  bool get isRelease => _currentBuildType == BuildType.release;

  /// App build type.
  BuildType get buildType => _currentBuildType;

  ValueNotifier<T> _config;

  Environment._(this._currentBuildType, T config) : _config = ValueNotifier(config);

  /// Provides instance [Environment].
  factory Environment.instance() => _instance as Environment<T>;

  /// Initializing the environment.
  static void init<T>({
    required BuildType buildType,
    required T config,
  }) {
    _instance ??= Environment<T>._(buildType, config);
  }
}
