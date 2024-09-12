import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController _prodController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

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
          TextField(
              controller: _prodController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nombre Producto',
              )),
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
        onPressed: () {
          print(_prodController.text + ": " + _priceController.text);
          Navigator.pop(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
