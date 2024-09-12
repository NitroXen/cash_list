import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final TextEditingController _controller = TextEditingController();

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
          "Shop",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          DropdownMenu(
            dropdownMenuEntries: lista,
            initialSelection: lista[0].label,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Total"),
            keyboardType: TextInputType.number,
            controller: _controller,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print(_controller.text);
          Navigator.pop(context);
        },
      ),
    );
  }
}
