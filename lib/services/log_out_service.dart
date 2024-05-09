import 'package:graduation_project/helper/api.dart';
import 'package:graduation_project/models/authentication_model.dart';

class LogOutService {
  Future<AuthenticationModel> logOut() async {
    Map<String, dynamic> data =
        await Api().post(url: "http://10.0.2.2/project/doctor/logout.php");
    return AuthenticationModel.fromJson(data);
  }
}
