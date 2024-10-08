import 'dart:collection';

import 'package:cash_list/component/component.dart';
import 'package:cash_list/model/product.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final TextEditingController _priceController = TextEditingController();

  Producto? selectValue;

  @override
  Widget build(BuildContext context) {
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
          DropdownButton(
            value: selectValue,
            onChanged: (Producto? newValue) {
              setState(() {
                selectValue = newValue!;
              });
            },
            items: Component.items
                .map<DropdownMenuItem<Producto>>((Producto value) {
              return DropdownMenuItem<Producto>(
                value: value,
                child: Text(value.name),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            controller: _priceController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Precio"),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.change_circle),
        onPressed: () {
          print(int.parse(_priceController.text));
          Navigator.pop(context);
        },
      ),
    );
  }
}
