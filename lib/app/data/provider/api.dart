import 'dart:convert';

import 'package:dev/app/data/models/app_error.dart';
import 'package:dev/app/data/models/user.dart';
import 'package:dev/core/consts/consts.dart';
import 'package:dev/core/utils/headers_api.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';

const catsUrl = 'https://api.thecatapi.com/v1/images/search';
const dogsUrl = '';

class MyApi extends GetConnect {
  login(String _) async {
    bool? exists;
    exists = jsonUsers['users']!.contains(_);
    return exists ? User(email: _) : AppError(message: 'E-mail não existe');
  }

  getCats() async {
    final _ = await get('$catsUrl/?limit=100&page=1&order=desc',
        decoder: (_) => _,
        headers: HeadersAPI(apiKey: CAT_API_KEY).getHeaders());
  }

  getDogs() async {}

  getAll() async {}
}
