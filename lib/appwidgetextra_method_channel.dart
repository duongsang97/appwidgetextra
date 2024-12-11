import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'appwidgetextra_platform_interface.dart';

/// An implementation of [AppwidgetextraPlatform] that uses method channels.
class MethodChannelAppwidgetextra extends AppwidgetextraPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('appwidgetextra');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
