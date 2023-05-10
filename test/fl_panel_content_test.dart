import 'package:flutter_test/flutter_test.dart';
import 'package:fl_panel_content/fl_panel_content.dart';
import 'package:fl_panel_content/fl_panel_content_platform_interface.dart';
import 'package:fl_panel_content/fl_panel_content_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlPanelContentPlatform
    with MockPlatformInterfaceMixin
    implements FlPanelContentPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlPanelContentPlatform initialPlatform = FlPanelContentPlatform.instance;

  test('$MethodChannelFlPanelContent is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlPanelContent>());
  });

  test('getPlatformVersion', () async {
    FlPanelContent flPanelContentPlugin = FlPanelContent();
    MockFlPanelContentPlatform fakePlatform = MockFlPanelContentPlatform();
    FlPanelContentPlatform.instance = fakePlatform;

    expect(await flPanelContentPlugin.getPlatformVersion(), '42');
  });
}
