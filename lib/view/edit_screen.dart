import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuEntry<String>> lista = [
      DropdownMenuEntry(label: "0", value: "hola"),
      DropdownMenuEntry(label: "1", value: "hola"),
      DropdownMenuEntry(label: "2", value: "hola"),
      DropdownMenuEntry(label: "3", value: "hola"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit",
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
          DropdownMenu<String>(
            initialSelection: lista[0].label,
            dropdownMenuEntries: lista,
          ),
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
