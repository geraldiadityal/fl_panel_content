
import 'fl_panel_content_platform_interface.dart';

class FlPanelContent {
  Future<String?> getPlatformVersion() {
    return FlPanelContentPlatform.instance.getPlatformVersion();
  }
}
