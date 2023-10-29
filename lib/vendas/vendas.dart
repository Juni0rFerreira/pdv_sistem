import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';
import 'package:pdv_sistem/vendas/vendas_controller.dart';

class VendasPage extends GetView<VendasController> {
  const VendasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text("Vendas")), actions: [
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
  return Center(
    child: Container(
      color: const Color.fromARGB(223, 221, 221, 221),
      child: Container(
        margin: const EdgeInsets.all(50),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
              child: Text("Vendas em aberto"),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: Form(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Código dos Produtos"),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Quantidade de Produtos"),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        height: 50.0,
                                        width: 150.0,
                                        child: TextButton(
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.add_circle_outline,
                                                color: Colors.green,
                                              ),
                                              Text("Adicionar")
                                            ],
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              height: 50.0,
                                              width: 150.0,
                                              child: TextButton(
                                                child: const Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .check_circle_outline,
                                                      color: Colors.green,
                                                    ),
                                                    Text("Finalizar")
                                                  ],
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              height: 50.0,
                                              width: 150.0,
                                              child: TextButton(
                                                child: const Row(
                                                  children: [
                                                    Icon(
                                                      Icons.highlight_off,
                                                      color: Colors.red,
                                                    ),
                                                    Text("Cancelar")
                                                  ],
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
              child: Text("Valor total - R\$ 00,00"),
            ),
          ],
        ),
      ),
    ),
  );
}
