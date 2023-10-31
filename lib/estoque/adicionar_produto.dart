import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';
import 'package:pdv_sistem/estoque/adicionar_produto_controller.dart';
import 'package:pdv_sistem/estoque/estoque.dart';

class AdicionarProduto extends GetView<AdicionarController> {
  const AdicionarProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("Adicionar Produtos")),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      drawer: const NavigatorDrawer(),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset('assets/img/box.png'),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Nome do Produto",
                              prefixIcon: Icon(Icons.drive_file_rename_outline),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Preço de Venda",
                              prefixIcon: Icon(Icons.paid),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Quantidade",
                              prefixIcon: Icon(Icons.inventory),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Preço de Custo",
                              prefixIcon: Icon(Icons.paid),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Código de Barras",
                              prefixIcon: Icon(Icons.barcode_reader),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.to(const EstoquePage());
                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green),),
                        child: const Row(
                          children: [
                            Icon(Icons.add),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Adicionar",
                                style: TextStyle(fontSize: 20),
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(const EstoquePage());
                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
                        child: const Row(
                          children: [
                            Icon(Icons.close),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Cancelar",
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
