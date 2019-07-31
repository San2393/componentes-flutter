import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ["Uno", "Dos", "Tres", "Cuatro"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("Peque"),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
