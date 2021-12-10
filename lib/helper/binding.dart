import 'package:f_shop/view_model/auth_view_model.dart';
import 'package:f_shop/view_model/product_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ProductViewModel());
  }

}