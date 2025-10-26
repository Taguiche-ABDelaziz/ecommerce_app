import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id) async {
    // ignore: avoid_print
    print("AppLink.test = '${AppLink.items}'");
    var response = await crud.postData(AppLink.items, {
      "id" : id.toString(),
    });
    return response.fold((l) => l, (r) => r);
  }
}
