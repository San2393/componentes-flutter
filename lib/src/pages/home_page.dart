import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

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
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciontes = [];

    for (var data in data) {
      final wigerTem = ListTile(
        title: Text(data['texto']),
        leading: getIcon(data['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
          // );

          // Navigator.push(context, route);

          Navigator.pushNamed(context, data['ruta']);
        },
      );

      opciontes..add(wigerTem)..add(Divider());
    }
    return opciontes;
  }
}
