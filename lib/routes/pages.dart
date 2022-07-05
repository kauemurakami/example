import 'package:example/app/modules/home/binding.dart';
import 'package:example/app/modules/home/page.dart';
import 'package:example/app/modules/login/binding.dart';
import 'package:example/app/modules/login/page.dart';
import 'package:get/get.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => HomePage(), bindings: [HomeBinding()]),
    GetPage(
        name: Routes.LOGIN,
        page: () => LoginPage(),
        bindings: [LoginBinding()]),
  ];
}
