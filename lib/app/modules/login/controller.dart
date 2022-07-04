import 'package:dev/app/data/models/user.dart';
import 'package:dev/app/data/services/app_config/service.dart';
import 'package:dev/app/data/services/auth/service.dart';
import 'package:dev/app/modules/login/repository.dart';
import 'package:dev/core/utils/verify_response.dart';
import 'package:dev/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginRepository repository;
  LoginController(this.repository);
  final user = User().obs;
  final isEmail = false.obs;
  final config = Get.find<AppConfigService>();
  final auth = Get.find<AuthService>();
  final darkMode = false.obs;

  @override
  void onInit() {
    reauth();
    super.onInit();
  }

  reauth() async {
    if (config.isLogged()) {
      Get.offNamed(Routes.DASH);
    }
  }

  login() async {
    final _ = await auth.login(user.value.email);
    if (verifyresponse(_)) {
      Get.showSnackbar(GetSnackBar(
        message: _.message,
        duration: const Duration(seconds: 2),
      ));
    } else {
      Get.offNamed(Routes.DASH);
    }
  }

  changeTheme() {
    darkMode.value = !darkMode.value;
    config.changeDarkMode(darkMode.value);
  }

  onChangeEmail(_) {
    GetUtils.isEmail(_) ? isEmail.value = true : isEmail.value = false;

    user.update((val) => val!.email = _);
  }

  onSavedEmail(_) => user.update((val) => val!.email = _);
  onValidateEmail(_) => GetUtils.isEmail(_) ? null : 'Insira um email válido';
}
