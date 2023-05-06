import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_sparcssso_platform_interface.dart';

/// An implementation of [FlutterSparcsssoPlatform] that uses method channels.
class MethodChannelFlutterSparcssso extends FlutterSparcsssoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_sparcssso');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
