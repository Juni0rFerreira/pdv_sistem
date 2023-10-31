import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';
import 'package:pdv_sistem/estoque/adicionar_produto.dart';
import 'package:pdv_sistem/estoque/estoque_controller.dart';

class EstoquePage extends GetView<EstoqueController> {
  const EstoquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(title: const Center(child: Text("Estoque")), actions: [
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
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 100, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Pesquisar",
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt)),
        const Text("Filtros", style: TextStyle(fontSize: 20)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.file_upload)),
        const Text("Exportar", style: TextStyle(fontSize: 20)),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 100, 0),
          child: ElevatedButton(
            
            onPressed: () {
              Get.to(const AdicionarProduto());
            },
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green),),
            child: const Row(
                          children: [
                            Icon(Icons.add),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Produtos", style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ),
          ),
        )
      ],
    ),
  );
}
