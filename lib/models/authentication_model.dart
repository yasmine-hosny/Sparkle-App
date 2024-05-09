class AuthenticationModel {
  final String status, message;
  final int? verificationCode;
  const AuthenticationModel({
    required this.status,
    this.verificationCode,
    required this.message,
  });
  factory AuthenticationModel.fromJson(jsonData) {
    return AuthenticationModel(
      status: jsonData['status'],
      verificationCode: jsonData['verification_code'],
      message: jsonData['message'],
    );
  }
}
