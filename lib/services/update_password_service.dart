import 'dart:convert';

import 'package:graduation_project/helper/api.dart';
import 'package:graduation_project/models/authentication_model.dart';

class UpdatePasswordService {
  Future<AuthenticationModel> updatePassword(
      {required String newPassword, required String email}) async {
    final jsonBody = jsonEncode({"newPassword": newPassword, "email": email});
    Map<String, dynamic> data = await Api().post(
        url: 'http://10.0.2.2/project/doctor/updatepass.php', body: jsonBody);
    return AuthenticationModel.fromJson(data);
  }
}
