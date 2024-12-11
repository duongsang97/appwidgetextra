import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'appwidgetextra_method_channel.dart';

abstract class AppwidgetextraPlatform extends PlatformInterface {
  /// Constructs a AppwidgetextraPlatform.
  AppwidgetextraPlatform() : super(token: _token);

  static final Object _token = Object();

  static AppwidgetextraPlatform _instance = MethodChannelAppwidgetextra();

  /// The default instance of [AppwidgetextraPlatform] to use.
  ///
  /// Defaults to [MethodChannelAppwidgetextra].
  static AppwidgetextraPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppwidgetextraPlatform] when
  /// they register themselves.
  static set instance(AppwidgetextraPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
