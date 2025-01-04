import 'package:yuvasri_2110/features/onboarding/model/login_request_model.dart';
import 'package:yuvasri_2110/features/onboarding/model/login_response_model.dart';
import 'package:yuvasri_2110/features/onboarding/repository/login_repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    final url = Uri.parse('https://your-api-url.com/login'); // Replace with your API URL

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(requestModel.toMap()),
    );

    if (response.statusCode == 200) {
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to login');
    }
  }
}
