
import 'appwidgetextra_platform_interface.dart';

class Appwidgetextra {
  Future<String?> getPlatformVersion() {
    return AppwidgetextraPlatform.instance.getPlatformVersion();
  }
}
