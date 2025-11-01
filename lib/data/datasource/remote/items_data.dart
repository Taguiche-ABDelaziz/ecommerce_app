import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id, String userid) async {
    // ignore: avoid_print
    print("AppLink.items = '${AppLink.items}'");
    var response = await crud.postData(AppLink.items, {
      "id": id.toString(),
      "usersid": userid,
    });
    return response.fold((l) => l, (r) => r);
  }
}
