import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/clientes/formulario_controller.dart';
import 'package:pdv_sistem/clientes/clientes.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';

class FormularioClientes extends GetView<FormularioController> {
  const FormularioClientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("Formulário do Cliente")),
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
                              child: Image.asset('assets/img/documentos.png'),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Nome do Cliente",
                              prefixIcon: Icon(Icons.badge),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "CPF/CNPJ",
                              prefixIcon: Icon(Icons.assignment_ind),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "E-mail",
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Tel",
                              prefixIcon: Icon(Icons.stay_current_portrait),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Endereço",
                              prefixIcon: Icon(Icons.home),
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
                          Get.to(const ClientesPage());
                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green),),
                        child: const Row(
                          children: [
                            Icon(Icons.save),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Salvar",
                                style: TextStyle(fontSize: 20),
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(const ClientesPage());
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
