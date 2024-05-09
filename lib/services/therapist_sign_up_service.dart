import 'dart:convert';

import 'package:graduation_project/helper/api.dart';
import 'package:graduation_project/models/authentication_model.dart';

class TherapistSignUpService {
  Future<AuthenticationModel> therapistSignUp({
    required String userName,
    required String gmail,
    required String pass,
  }) async {
    final jsonBody = jsonEncode({
      "username": userName,
      "email": gmail,
      "password": pass,
    });

    Map<String, dynamic> data = await Api().post(
      url: 'http://10.0.2.2/project/doctor/signup.php',
      body: jsonBody,
    );
    return AuthenticationModel.fromJson(data);
  }
}
