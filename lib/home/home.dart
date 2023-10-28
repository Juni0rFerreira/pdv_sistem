import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Home")),
          actions: [
            IconButton(
                onPressed: () {
                  Get.back(); // ao inves de voltar como esta ele tem que voltar para tela de login e bloquear para logar novamente
                },
                icon: const Icon(Icons.logout))
          ]),
          drawer: const NavigatorDrawer(),
      body: _body());

  }
}

_body() {
  return Center(child: Container());
}
