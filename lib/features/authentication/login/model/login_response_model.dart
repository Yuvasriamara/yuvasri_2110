class LoginResponseModel {
  final bool success;
  final String message;
  final String token;

  LoginResponseModel({
    required this.success,
    required this.message,
    required this.token,
  });

  // Method to convert JSON into a LoginResponseModel object
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      success: json['success'],
      message: json['message'],
      token: json['token'],
    );
  }
}
