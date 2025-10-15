import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class ResetpasswordData {
  Crud crud;
  ResetpasswordData(this.crud);
  postData(String email, String password) async {
    var response = await crud.postData(AppLink.resetpassword, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
