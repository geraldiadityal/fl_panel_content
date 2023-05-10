import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fl_panel_content_method_channel.dart';

abstract class FlPanelContentPlatform extends PlatformInterface {
  /// Constructs a FlPanelContentPlatform.
  FlPanelContentPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlPanelContentPlatform _instance = MethodChannelFlPanelContent();

  /// The default instance of [FlPanelContentPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlPanelContent].
  static FlPanelContentPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlPanelContentPlatform] when
  /// they register themselves.
  static set instance(FlPanelContentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
