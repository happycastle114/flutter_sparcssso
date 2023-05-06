import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_sparcssso_method_channel.dart';

abstract class FlutterSparcsssoPlatform extends PlatformInterface {
  /// Constructs a FlutterSparcsssoPlatform.
  FlutterSparcsssoPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSparcsssoPlatform _instance = MethodChannelFlutterSparcssso();

  /// The default instance of [FlutterSparcsssoPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSparcssso].
  static FlutterSparcsssoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSparcsssoPlatform] when
  /// they register themselves.
  static set instance(FlutterSparcsssoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
