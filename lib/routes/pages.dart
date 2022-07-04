import 'package:dev/app/modules/dashboard/binding.dart';
import 'package:dev/app/modules/dashboard/page.dart';
import 'package:dev/app/modules/home/binding.dart';
import 'package:dev/app/modules/home/page.dart';
import 'package:dev/app/modules/login/binding.dart';
import 'package:dev/app/modules/login/page.dart';
import 'package:get/get.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => HomePage(), bindings: [HomeBinding()]),
    GetPage(
        name: Routes.DASH,
        page: () => DashboardPage(),
        bindings: [DashboardBinding()]),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
  ];
}
