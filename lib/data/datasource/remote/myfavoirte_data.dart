import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class MyFavoirteData {
  Crud crud;
  MyFavoirteData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.favoriteView, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
  deletData(String id) async {
    var response = await crud.postData(AppLink.deletefromfavorite, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
