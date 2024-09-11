import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "add",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Nombre Producto',
          )),
          const SizedBox(
            height: 40,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Precio"),
          ),
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Añadir"),
          )
        ],
      ),
    );
  }
}
