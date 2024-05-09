import 'dart:convert';

import 'package:graduation_project/helper/api.dart';
import 'package:graduation_project/models/authentication_model.dart';

class ChildLogInService {
  Future<AuthenticationModel> childLogIn({
    required String email,
    required String password,
  }) async {
    final jsonBody = jsonEncode({
      "email": email,
      "password": password,
    });

    Map<String, dynamic> data = await Api().post(
      url: 'http://10.0.2.2/project/children/login.php',
      body: jsonBody,
    );

    return AuthenticationModel.fromJson(data);
  }
}
