import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/login/login_controller.dart';

class InputEmail extends GetView<LoginController> {
  const InputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.emailInput,
      decoration: const InputDecoration(hintText: "E-mail"),
    );
  }
}