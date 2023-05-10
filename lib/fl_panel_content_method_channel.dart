import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fl_panel_content_platform_interface.dart';

/// An implementation of [FlPanelContentPlatform] that uses method channels.
class MethodChannelFlPanelContent extends FlPanelContentPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fl_panel_content');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
