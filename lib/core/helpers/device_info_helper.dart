import 'package:loynova_app/core/helpers/app_debuger.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DeviceInfoHelper {
  static Future getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    AppDebuger.log("packageInfo.version ${packageInfo.version}");
    return packageInfo.version;
  }

  static Future getAppBuild() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    AppDebuger.log("packageInfo.buildNumber ${packageInfo.buildNumber}");
    return packageInfo.buildNumber;
  }
}
