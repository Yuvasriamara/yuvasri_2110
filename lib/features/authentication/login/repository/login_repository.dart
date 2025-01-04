import 'package:yuvasri_2110/features/onboarding/model/login_request_model.dart';
import 'package:yuvasri_2110/features/onboarding/model/login_response_model.dart';

abstract class LoginRepository {
  Future<LoginResponseModel> login(LoginRequestModel requestModel);
}
