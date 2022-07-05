import 'package:example/app/modules/login/controller.dart';
import 'package:example/app/widgets/custom_tff.dart';
import 'package:example/core/theme/text_theme.dart';
import 'package:example/core/values/colors.dart';
import 'package:example/core/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormwidget extends GetView<LoginController> {
  GlobalKey<FormState>? formkey;
  LoginFormwidget({Key? key, this.formkey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
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
                color: controller.isEmail.value ? Colors.green : Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: MaterialButton(
              onPressed: () {
                FormState formState = formkey!.currentState!;
                if (formState.validate()) {
                  controller.login();
                }
              },
              color: tumbleweed,
              splashColor: desert_sand,
              child: Text(
                ENTRAR,
                style: text_white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
