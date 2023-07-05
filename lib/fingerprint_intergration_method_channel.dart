import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fingerprint_intergration_platform_interface.dart';

/// An implementation of [FingerprintIntergrationPlatform] that uses method channels.
class MethodChannelFingerprintIntergration extends FingerprintIntergrationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fingerprint_intergration');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  void sample()  {
 methodChannel.invokeMethod('sample');
  }
}
