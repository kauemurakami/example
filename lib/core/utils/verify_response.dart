import 'package:example/app/data/models/app_error.dart';

verifyresponse(_) {
  if (_.runtimeType == AppError) {
    return true;
  } else {
    return false;
  }
}
