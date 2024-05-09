import 'dart:convert';

import 'package:graduation_project/helper/api.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/models/child_info_model.dart';

class ChildSignUpService {
  ChildInfoModel childInfoModel;
  ChildSignUpService({required this.childInfoModel});

  Future<AuthenticationModel> childSignUp() async {
    final jsonBody = jsonEncode({
      "firstname": childInfoModel.firstName,
      "lastname": childInfoModel.lastName,
      "email": childInfoModel.email,
      "password": childInfoModel.password,
      "birthday": childInfoModel.birthday,
      "gender": childInfoModel.gender,
      "therapist": childInfoModel.therapistName,
    });
    Map<String, dynamic> data = await Api().post(
      url: 'http://10.0.2.2/project/children/register.php',
      body: jsonBody,
    );

    return AuthenticationModel.fromJson(data);
  }
}
