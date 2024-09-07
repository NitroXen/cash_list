import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add"),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 80,
          ),
          TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Nombre Producto',
          )),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Precio"),
          )
        ],
      ),
    );
  }
}
