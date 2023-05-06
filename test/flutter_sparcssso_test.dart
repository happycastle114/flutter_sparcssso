import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sparcssso/flutter_sparcssso.dart';
import 'package:flutter_sparcssso/flutter_sparcssso_platform_interface.dart';
import 'package:flutter_sparcssso/flutter_sparcssso_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterSparcsssoPlatform
    with MockPlatformInterfaceMixin
    implements FlutterSparcsssoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterSparcsssoPlatform initialPlatform = FlutterSparcsssoPlatform.instance;

  test('$MethodChannelFlutterSparcssso is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterSparcssso>());
  });

  test('getPlatformVersion', () async {
    FlutterSparcssso flutterSparcsssoPlugin = FlutterSparcssso();
    MockFlutterSparcsssoPlatform fakePlatform = MockFlutterSparcsssoPlatform();
    FlutterSparcsssoPlatform.instance = fakePlatform;

    expect(await flutterSparcsssoPlugin.getPlatformVersion(), '42');
  });
}
