
import 'flutter_sparcssso_platform_interface.dart';

class FlutterSparcssso {
  Future<String?> getPlatformVersion() {
    return FlutterSparcsssoPlatform.instance.getPlatformVersion();
  }
}
