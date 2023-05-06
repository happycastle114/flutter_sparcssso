import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sparcssso/flutter_sparcssso_method_channel.dart';

void main() {
  MethodChannelFlutterSparcssso platform = MethodChannelFlutterSparcssso();
  const MethodChannel channel = MethodChannel('flutter_sparcssso');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
