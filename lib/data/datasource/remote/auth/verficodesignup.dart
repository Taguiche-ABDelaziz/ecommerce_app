import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class VerfiCodeSignupData {
  Crud crud;
  VerfiCodeSignupData(this.crud);
  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verfiyCodeSignup, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
