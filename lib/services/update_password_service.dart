import 'dart:convert';

import 'package:graduation_project/helper/api.dart';
import 'package:graduation_project/models/authentication_model.dart';

class UpdatePasswordService {
  Future<AuthenticationModel> updatePassword(
      {required String newPassword,
      required String email,
      required String url}) async {
    final jsonBody = jsonEncode({"newPassword": newPassword, "email": email});
    Map<String, dynamic> data = await Api().post(url: url, body: jsonBody);
    return AuthenticationModel.fromJson(data);
  }
}
