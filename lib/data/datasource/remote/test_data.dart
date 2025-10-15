import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  getData() async {
    // ignore: avoid_print
    print("AppLink.test = '${AppLink.test}'");
    var response = await crud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }
}
