import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/login/login_controller.dart';

class InputPassword extends GetView<LoginController> {
  const InputPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordInput,
      decoration: const InputDecoration(hintText: "Senha", border: OutlineInputBorder()),
    );
  }
}