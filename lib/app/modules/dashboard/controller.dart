import 'package:dev/app/modules/cats/binding.dart';
import 'package:dev/app/modules/cats/page.dart';
import 'package:dev/app/modules/dashboard/repository.dart';
import 'package:dev/app/modules/dogs/binding.dart';
import 'package:dev/app/modules/dogs/page.dart';
import 'package:dev/app/modules/home/binding.dart';
import 'package:dev/app/modules/home/page.dart';
import 'package:dev/core/utils/remove_splash.dart';
import 'package:dev/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final DashboardRepository repository;
  DashboardController(this.repository);
  @override
  void onInit() {
    removeSplash();
    super.onInit();
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME) {
      return GetPageRoute(
          settings: settings,
          page: () => HomePage(),
          bindings: [HomeBinding()]);
    }
    if (settings.name == Routes.CATS) {
      return GetPageRoute(
          settings: settings,
          page: () => CatsPage(),
          bindings: [CatsBinding()]);
    }
    if (settings.name == Routes.DOGS) {
      return GetPageRoute(
          settings: settings,
          page: () => DogsPage(),
          bindings: [DogsBinding()]);
    }
    return null;
  }
}
