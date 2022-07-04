import 'package:dev/app/data/services/app_config/service.dart';
import 'package:dev/app/data/services/auth/service.dart';
import 'package:dev/app/modules/dashboard/binding.dart';
import 'package:dev/app/modules/dashboard/page.dart';
import 'package:dev/app/modules/login/binding.dart';
import 'package:dev/app/modules/login/page.dart';
import 'package:dev/core/theme/app_theme.dart';
import 'package:dev/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Get.putAsync(() => AppConfigService().init());
  await Get.putAsync(() => AuthService().init());

  runApp(GetMaterialApp(
    home: LoginPage(),
    initialBinding: LoginBinding(),
    initialRoute: Routes.LOGIN,
    getPages: AppPages.pages,
    theme: GlobalTheme.globalTheme,
    darkTheme: GlobalTheme.globalDarkTheme,
    debugShowCheckedModeBanner: false,
  ));
}
