import 'package:flutter_test/flutter_test.dart';
import 'package:appwidgetextra/appwidgetextra.dart';
import 'package:appwidgetextra/appwidgetextra_platform_interface.dart';
import 'package:appwidgetextra/appwidgetextra_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAppwidgetextraPlatform
    with MockPlatformInterfaceMixin
    implements AppwidgetextraPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AppwidgetextraPlatform initialPlatform = AppwidgetextraPlatform.instance;

  test('$MethodChannelAppwidgetextra is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAppwidgetextra>());
  });

  test('getPlatformVersion', () async {
    Appwidgetextra appwidgetextraPlugin = Appwidgetextra();
    MockAppwidgetextraPlatform fakePlatform = MockAppwidgetextraPlatform();
    AppwidgetextraPlatform.instance = fakePlatform;

    expect(await appwidgetextraPlugin.getPlatformVersion(), '42');
  });
}
