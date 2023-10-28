import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/home/home.dart';

class LoginController extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  static const email = "admin";
  static const password = "admin";

  void tryTologin() {
    switch (emailInput.text) {
      case email:
        checkPassoword();
        break;
      case "":
        error("Insira um e-mail!");
        break;
      default:
        error("E-mail Inválido!");
    }
  }

  void checkPassoword() {

    switch (passwordInput.text) {
      case password:
        login();
        break;
      case "":
        error("Insira sua senha!");
        break;
      default:
        error("Senha Inválida!");
    }
  }

    void login() {
    Get.to(const HomePage());
    }

  void error(String error) {
    // ignore: avoid_print
    print(error);
  }
}
