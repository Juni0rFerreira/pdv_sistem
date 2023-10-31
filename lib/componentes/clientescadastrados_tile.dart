import 'package:flutter/material.dart';
import 'package:pdv_sistem/models/clientes_cadastrados.dart';

class ClientesCadastradosTile extends StatelessWidget {
  final ClientesCadastrados clientescadastrados;

  const ClientesCadastradosTile(this.clientescadastrados, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(clientescadastrados.name),
      subtitle: Text(clientescadastrados.cpfcnpj),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit), color: Colors.orange,),
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete), color: Colors.red,),
          ],
        ),
      ),
    );
  }
}
