import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compotentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData();
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciontes = [];

    for (var data in data) {
      final wigerTem = ListTile(
        title: Text(data['texto']),
        trailing: Icon(Icons.arrow_right,color: Colors.blue),
        leading: Icon(Icons.arrow_upward,color: Colors.red));
        opciontes..add(wigerTem)..add(Divider());
      
    }
    return opciontes;
  }
}
