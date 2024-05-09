import 'dart:convert';

import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/api.dart';
import 'package:graduation_project/models/authentication_model.dart';

class TherapistEditProfileService {
  Future<AuthenticationModel> therapistEditProfile(
      {required String userName,
      required String email,
      required String password}) async {
    final jsonBody = jsonEncode(
      {
        "username": userName,
        "email": email,
        "password": password,
      },
    );

    Map<String, dynamic> data = await Api()
        .put(url: 'http://10.0.2.2/project/doctor/update.php', body: jsonBody);

    return AuthenticationModel.fromJson(data);
  }
}
