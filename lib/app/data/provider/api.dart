import 'dart:convert';

import 'package:example/app/data/models/animals.dart';
import 'package:example/app/data/models/app_error.dart';
import 'package:example/app/data/models/user.dart';
import 'package:example/core/utils/headers_api.dart';
import 'package:example/core/values/consts.dart';
import 'package:get/get_connect/connect.dart';

const catsUrl = 'https://api.thecatapi.com/v1/images/search';
const dogsUrl = 'https://api.thedogapi.com/v1/images/search';

class MyApi extends GetConnect {
  login(String _) async {
    bool? exists;
    exists = jsonUsers['users']!.contains(_);
    return exists ? User(email: _) : AppError(message: 'E-mail não existe');
  }

  getCats() async {
    final _ = await get('$catsUrl/?limit=20&page=1&order=desc',
        decoder: (_) => _,
        headers: HeadersAPI(apiKey: CAT_API_KEY).getHeaders());
    if (_.hasError) {
      return AppError(message: 'Algum erro inesperado aconteceu');
    } else {
      return animalsFromJson(_.body);
    }
  }

  getDogs() async {
    final _ = await get('$dogsUrl/?limit=20&page=1&order=desc',
        decoder: (_) => _,
        headers: HeadersAPI(apiKey: DOG_API_KEY).getHeaders());

    if (_.hasError) {
      return AppError(message: 'Algum erro inesperado aconteceu');
    } else {
      return animalsFromJson(_.body);
    }
  }

  getAll() async {
    var list;
    await Future.wait<dynamic>([getCats(), getDogs()]).then((value) {
      list = value.first;
      list.addAll(value.last);
    });
    list.sort((a, b) => a.hashCode.compareTo(b.hashCode));
    return list;
  }
}
