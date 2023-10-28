import 'package:get/get.dart';
import 'package:pdv_sistem/login/login_controller.dart';

class LoginBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}