import 'package:flutter/material.dart';
import 'package:pdv_sistem/clientes/clientes.dart';
import 'package:pdv_sistem/estoque/estoque.dart';
import 'package:pdv_sistem/home/home.dart';
import 'package:pdv_sistem/vendas/vendas.dart';

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const ListTile(
          title: Center(child: Text("SISTEMA")),
        ),
        const SizedBox(),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text("INICIO"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: const Text("VENDAS"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VendasPage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.inventory),
          title: const Text("ESTOQUE"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EstoquePage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.sentiment_very_satisfied),
          title: const Text("CLIENTES"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ClientesPage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.description),
          title: const Text("RELATÓRIOS"),
          onTap: () {},
        ),
      ],
    ));
  }
}
