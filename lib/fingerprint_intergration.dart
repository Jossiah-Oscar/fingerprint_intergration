
import 'fingerprint_intergration_platform_interface.dart';

class FingerprintIntergration {
  Future<String?> getPlatformVersion() {
    return FingerprintIntergrationPlatform.instance.getPlatformVersion();
  }

  void sample() {
     FingerprintIntergrationPlatform.instance.sample();
  }
}
