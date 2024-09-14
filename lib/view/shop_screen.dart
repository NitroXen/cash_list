import 'package:cash_list/component/component.dart';
import 'package:cash_list/model/product.dart';
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
    Producto? selectValue;

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
