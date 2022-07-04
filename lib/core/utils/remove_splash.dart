import 'package:flutter_native_splash/flutter_native_splash.dart';

removeSplash() async {
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
}
