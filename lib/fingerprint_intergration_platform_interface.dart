import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fingerprint_intergration_method_channel.dart';

abstract class FingerprintIntergrationPlatform extends PlatformInterface {
  /// Constructs a FingerprintIntergrationPlatform.
  FingerprintIntergrationPlatform() : super(token: _token);

  static final Object _token = Object();

  static FingerprintIntergrationPlatform _instance = MethodChannelFingerprintIntergration();

  /// The default instance of [FingerprintIntergrationPlatform] to use.
  ///
  /// Defaults to [MethodChannelFingerprintIntergration].
  static FingerprintIntergrationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FingerprintIntergrationPlatform] when
  /// they register themselves.
  static set instance(FingerprintIntergrationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }


  void sample(){
    throw UnimplementedError('sample() has not been implemented.');

  }
}
