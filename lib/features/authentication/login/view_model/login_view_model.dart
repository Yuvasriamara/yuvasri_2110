import 'package:flutter/material.dart';
import 'package:yuvasri_2110/features/onboarding/model/login_request_model.dart';
import 'package:yuvasri_2110/features/onboarding/model/login_response_model.dart';
import 'package:yuvasri_2110/features/onboarding/repository/login_repository.dart';
import 'package:yuvasri_2110/features/onboarding/repository/login_repository_impl.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginRepository _loginRepository = LoginRepositoryImpl();
  bool isLoading = false;
  String errorMessage = '';

  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      LoginRequestModel requestModel = LoginRequestModel(email: email, password: password);
      LoginResponseModel response = await _loginRepository.login(requestModel);

      if (response.success) {
        // Handle successful login (e.g., navigate to home screen)
      } else {
        errorMessage = response.message;
      }
    } catch (e) {
      errorMessage = 'Failed to login. Please try again.';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
