

import 'dart:async';

import '../log.dart';
import 'shared_preferences.dart';


class DBO {

  saveProduct(String value){
    SP.addStringList(key: "productList", value: value);
  }

  deleteProduct(String key) {
    SP.delete(key);
  }

  Future<List<String>?> getProductList() async {

    Completer<List<String>?> c = Completer();
    List<String>? value = SP.getData(dataType: DataType.listStr, key: "productList");

    c.complete(value);
    return c.future;
  }



  logout(){

    SP.delete("userInfo");

  }

}