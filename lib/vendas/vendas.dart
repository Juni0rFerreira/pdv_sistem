import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';
import 'package:pdv_sistem/vendas/vendas_controller.dart';

class VendasPage extends GetView<VendasController> {
  const VendasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Vendas")),
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
