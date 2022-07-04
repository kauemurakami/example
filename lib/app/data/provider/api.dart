import 'dart:convert';

import 'package:dev/app/data/models/app_error.dart';
import 'package:dev/app/data/models/user.dart';
import 'package:dev/core/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';

const catsUrl = '';
const dogsUrl = '';

class MyApi extends GetConnect {
  login(String _) async {
    bool? exists;
    exists = jsonUsers['users']!.contains(_);
    return exists ? User(email: _) : AppError(message: 'E-mail não existe');
  }

  getCats() async {}

  getDogs() async {}

  getAll() async {}
}
