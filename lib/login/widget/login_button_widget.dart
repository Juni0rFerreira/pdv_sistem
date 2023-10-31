import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/login/login_controller.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 20, height: 40,
      child: ElevatedButton(
        
        onPressed: () {
          controller.tryTologin();
        },
        child: const Text("Entrar"),
        
      ),
    );
  }
}