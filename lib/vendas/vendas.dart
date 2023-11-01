import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';
import 'package:pdv_sistem/vendas/vendas_controller.dart';

class VendasPage extends GetView<VendasController> {
  const VendasPage({Key? key}) : super(key: key);

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
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      drawer: const NavigatorDrawer(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        color: const Color.fromARGB(223, 221, 221, 221),
        margin: const EdgeInsets.all(50),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
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
                        // Adicione aqui a lista de produtos em vendas
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              _buildTextField(
                                label: "Código dos Produtos",
                                keyboardType: TextInputType.number,
                              ),
                              _buildTextField(
                                label: "Quantidade de Produtos",
                                keyboardType: TextInputType.number,
                              ),

                              _buildButton("Adicionar", Icons.add, Colors.blue, () {
                                // Adicione a lógica para adicionar produtos à venda aqui
                              }),
                              _buildButton(
                                  "Finalizar", Icons.verified, Colors.green,
                                  () {
                                Get.defaultDialog(
                                  title: "Finalizar Venda",
                                  middleText: "Deseja finalizar a venda?",
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back(); 
                                      },
                                      child: const Text("Cancelar"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back(); 
                                        // Adicione a lógica para finalizar a venda aqui
                                        // Posteriormente, adicione a lógica para imprimir o cupom
                                        _finalizarVenda(); // Função para finalizar a venda e imprimir o cupom
                                      },
                                      child: const Text("Finalizar"),
                                    ),
                                  ],
                                );
                              }),
                              _buildButton("Cancelar", Icons.close, Colors.red,
                                  () {
                                Get.defaultDialog(
                                  title: "Cancelar Venda",
                                  middleText:
                                      "Tem certeza que deseja cancelar a venda?",
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: const Text("Cancelar"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                        Get.off(const VendasPage());
                                      },
                                      child: const Text("Confirmar"),
                                    ),
                                  ],
                                );
                              }),
                            ],
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

  Widget _buildTextField(
      {required String label, required TextInputType keyboardType}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
        ),
        keyboardType: keyboardType,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }

  Widget _buildButton(
      String text, IconData icon, Color color, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  void _finalizarVenda() {
    // Adicione a lógica para finalizar a venda aqui
    // Por exemplo, atualizar o estado da venda, calcular o total, etc.
    _imprimirCupom();
  }

  void _imprimirCupom() {
    // Adicione a lógica para imprimir o cupom aqui
    // Por exemplo, chamar um serviço de impressão ou abrir um modal de visualização do cupom
  }
}
