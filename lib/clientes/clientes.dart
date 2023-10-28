import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/clientes/clientes_controller.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';

class ClientesPage extends GetView<ClientesController> {
  const ClientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Clientes")),
          actions: [
            IconButton(
                onPressed: () {
                  Get.back();
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
