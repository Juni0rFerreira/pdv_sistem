import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdv_sistem/componentes/navigator_drawer.dart';
import 'package:pdv_sistem/componentes/produtos.dart';
import 'package:pdv_sistem/estoque/estoque_controller.dart';

class EstoquePage extends GetView<EstoqueController> {
  const EstoquePage({super.key});

  Future<void> _exibirDialogoAdicionarProduto(BuildContext context) async {
    String nome = "";
    double preco = 0.0;
    int quantidade = 0;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Adicionar Produto'),
          content: Column(
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: 'Nome'),
                onChanged: (value) {
                  nome = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Preço'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  preco = double.tryParse(value) ?? 0.0;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Quantidade'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  quantidade = int.tryParse(value) ?? 0;
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (nome.isNotEmpty && preco > 0 && quantidade > 0) {
                  Get.find<EstoqueController>().adicionarProduto(
                    Produto(nome: nome, preco: preco, quantidade: quantidade),
                  );
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Preencha todas as informações do produto.'),
                    ),
                  );
                }
              },
              child: const Text('Adicionar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Estoque")), actions: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.logout))
      ]),
      drawer: const NavigatorDrawer(),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _exibirDialogoAdicionarProduto(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

_body() {
  return Center(child: Container());
}
