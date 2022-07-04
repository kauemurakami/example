import 'package:dev/app/data/models/app_error.dart';

verifyresponse(_) {
  if (_.runtimeType == AppError) {
    return true;
  } else {
    return false;
  }
}
