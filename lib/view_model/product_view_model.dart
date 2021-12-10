import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_shop/helper/home_service.dart';
import 'package:f_shop/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductViewModel extends GetxController{
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);
  List<ProductModel> get productModel=> _productModel;
  List<ProductModel> _productModel = [];



ProductViewModel(){
  getProduct();
}
getProduct()async
{
  _loading.value = true;
  HomeService().getProduct().then((value) {
    for(int i =0;i < value.length;i ++){
      _productModel.add(ProductModel.fromJson(value[i].data()as Map<String, dynamic>));
      _loading.value = false;
    }
    update();
  });
}


}