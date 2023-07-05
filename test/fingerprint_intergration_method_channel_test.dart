import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fingerprint_intergration/fingerprint_intergration_method_channel.dart';

void main() {
  MethodChannelFingerprintIntergration platform = MethodChannelFingerprintIntergration();
  const MethodChannel channel = MethodChannel('fingerprint_intergration');

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
