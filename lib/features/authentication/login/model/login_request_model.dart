class LoginRequestModel {
  final String email;
  final String password;

  LoginRequestModel({required this.email, required this.password});

  // Method to convert the data into a map (for API requests)
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }
}
