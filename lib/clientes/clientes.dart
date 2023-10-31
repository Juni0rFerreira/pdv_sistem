import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/clientes/formulario_cliente.dart';
import 'package:pdv_sistem/clientes/clientes_controller.dart';
import 'package:pdv_sistem/componentes/clientescadastrados_tile.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';
import 'package:pdv_sistem/data/dummy_clientes.dart';

class ClientesPage extends GetView<ClientesController> {
  const ClientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Center(child: Text("Clientes")), actions: [
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
  final clientescadastrados = {...DUMMY_CLIENTES};
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: <Widget>[
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
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
            const SizedBox(
              width: 20,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt)),
            const SizedBox(
              width: 10,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.file_upload)),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const FormularioClientes());
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 10,),
                    Text("Cadastrar Cliente", style: TextStyle(fontSize: 24)),
                  ],
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: clientescadastrados.length,
            itemBuilder: (ctx, i) => ClientesCadastradosTile(
              clientescadastrados.values.elementAt(i),
            ),
          ),
        ),
      ],
    ),
  );
}
