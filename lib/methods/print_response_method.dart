import 'package:graduation_project/models/authentication_model.dart';

void printResponse(AuthenticationModel model) {
  print(model.status);
  print(model.message);
  print(model.verificationCode);
}
