import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel.dart';

abstract class AndroidPackageInstallerPlatform extends PlatformInterface {
  AndroidPackageInstallerPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidPackageInstallerPlatform _instance = MethodChannelAndroidPackageInstaller();

  static AndroidPackageInstallerPlatform get instance => _instance;

  static set instance(AndroidPackageInstallerPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  Future<int?> installApk(String path) {
    throw UnimplementedError('installApk() has not been implemented.');
  }
}
