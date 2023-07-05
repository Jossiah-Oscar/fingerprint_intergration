import 'package:flutter_test/flutter_test.dart';
import 'package:fingerprint_intergration/fingerprint_intergration.dart';
import 'package:fingerprint_intergration/fingerprint_intergration_platform_interface.dart';
import 'package:fingerprint_intergration/fingerprint_intergration_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFingerprintIntergrationPlatform
    with MockPlatformInterfaceMixin
    implements FingerprintIntergrationPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FingerprintIntergrationPlatform initialPlatform = FingerprintIntergrationPlatform.instance;

  test('$MethodChannelFingerprintIntergration is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFingerprintIntergration>());
  });

  test('getPlatformVersion', () async {
    FingerprintIntergration fingerprintIntergrationPlugin = FingerprintIntergration();
    MockFingerprintIntergrationPlatform fakePlatform = MockFingerprintIntergrationPlatform();
    FingerprintIntergrationPlatform.instance = fakePlatform;

    expect(await fingerprintIntergrationPlugin.getPlatformVersion(), '42');
  });
}
