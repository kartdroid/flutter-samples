import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginSample {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_sample');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
