import 'package:dev/app/modules/dashboard/controller.dart';
import 'package:dev/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
          initialRoute: Routes.HOME,
          onGenerateRoute: controller.onGenerateRoute),
    );
  }
}
