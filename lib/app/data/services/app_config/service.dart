import 'package:example/app/data/provider/api.dart';
import 'package:example/app/data/services/app_config/repository.dart';
import 'package:example/core/values/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppConfigService extends GetxService {
  late AppConfigRepository repository;
  late GetStorage box;
  Future<AppConfigService> init() async {
    repository = AppConfigRepository(MyApi());
    box = GetStorage();
    await box.writeIfNull(IS_LOGGED, false);
    await box.writeIfNull(DARK_MODE, false);
    await box.writeIfNull(USER_EMAIL, '');
    return this;
  }

  darkMode() => box.read(DARK_MODE);
  isLogged() => box.read(IS_LOGGED);
  useremail() => box.read(USER_EMAIL);

  changeDarkMode(_) async {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    await box.write(DARK_MODE, _);
  }

  changeIsLogged(_) async => box.write(IS_LOGGED, _);
  changeUserEmail(_) async => box.write(USER_EMAIL, _);
}
