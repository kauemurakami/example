import 'package:dev/app/data/services/app_config/service.dart';
import 'package:dev/app/modules/login/controller.dart';
import 'package:dev/app/widgets/custom_tff.dart';
import 'package:dev/core/consts/consts.dart';
import 'package:dev/core/theme/text_theme.dart';
import 'package:dev/core/values/colors.dart';
import 'package:dev/core/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Container(
                    child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Get.changeTheme(ThemeData.dark()),
                ))
              ],
            ),
          ),
          Expanded(child: Image.asset('${IMAGES}splash.png')),
          Expanded(
            flex: 3,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(
                    () => CustomTffWidget(
                      marginTop: 16.0,
                      text: EMAIL,
                      onSaved: (_) => controller.onSavedEmail(_),
                      onChanged: (_) => controller.onChangeEmail(_),
                      onValidate: (_) => controller.onValidateEmail(_),
                      icon: Icon(
                        Icons.check,
                        color: controller.isEmail.value
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: MaterialButton(
                      onPressed: () {
                        FormState formState = _formKey.currentState!;
                        if (formState.validate()) {
                          controller.login();
                        }
                      },
                      color: tumbleweed,
                      splashColor: desert_sand,
                      child: const Text(
                        ENTRAR,
                        style: text_white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
