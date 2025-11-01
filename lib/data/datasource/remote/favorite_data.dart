import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String usersid, String itemsid) async {
    // ignore: avoid_print
    print("AppLink.favorite = '${AppLink.favoriteAdd}'");
    var response = await crud.postData(AppLink.favoriteAdd, {
      "usersid": usersid,
      "itemsid": itemsid,
    });
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String usersid, String itemsid) async {
    // ignore: avoid_print
    print("AppLink.favorite = '${AppLink.favoriteRemove}'");
    var response = await crud.postData(AppLink.favoriteRemove, {
      "usersid": usersid,
      "itemsid": itemsid,
    });
    return response.fold((l) => l, (r) => r);
  }
}
