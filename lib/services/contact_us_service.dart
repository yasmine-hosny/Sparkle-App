import 'dart:convert';

import 'package:graduation_project/helper/api.dart';
import 'package:graduation_project/models/authentication_model.dart';

class ContactUsService {
  Future<AuthenticationModel> contactUs(
      {required String email, required String message}) async {
    final jsonBody = jsonEncode({
      "email": email,
      "message": message,
    });
    Map<String, dynamic> data = await Api().post(
        url: 'http://10.0.2.2/project/doctor/contact.php', body: jsonBody);
    return AuthenticationModel.fromJson(data);
  }
}
