import 'package:dev/app/modules/dashboard/repository.dart';
import 'package:dev/app/modules/home/binding.dart';
import 'package:dev/app/modules/home/page.dart';
import 'package:dev/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final DashboardRepository repository;
  DashboardController(this.repository);
  @override
  void onInit() {
    removeSplash();
    super.onInit();
  }

  removeSplash() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME) {
      return GetPageRoute(
          settings: settings,
          page: () => HomePage(),
          bindings: [HomeBinding()]);
    }
    // if (settings.name == Routes.CATS) {
    //   return GetPageRoute(
    //       settings: settings,
    //       page: () => HomePage(),
    //       bindings: [HomeBinding()]);
    // }
    // if (settings.name == Routes.DOGS) {
    //   return GetPageRoute(
    //       settings: settings,
    //       page: () => HomePage(),
    //       bindings: [HomeBinding()]);
    // }
    return null;
  }
}
