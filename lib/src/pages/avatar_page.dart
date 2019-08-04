import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar page"),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.exit_to_app),
      onPressed: (){
        Navigator.pop(context);
      },)
    );
  }
}
