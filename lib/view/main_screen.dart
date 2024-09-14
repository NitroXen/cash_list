import 'package:cash_list/component/component.dart';
import 'package:cash_list/view/routes/router.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(fontSize: 30.0, color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routering.edit);
              },
              icon: Icon(
                Icons.format_align_justify,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routering.add);
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routering.shop);
        },
        child: Icon(Icons.shopify),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            TitleCount(style: style),
            Expanded(
                child: ListView.builder(
                    itemCount: Component.items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(Component.items[index].name),
                          subtitle: Text("${Component.items[index].price} €"));
                    }))
          ],
        ),
      ),
    );
  }
}

class TitleCount extends StatelessWidget {
  TitleCount({
    super.key,
    required this.style,
  });

  final TextStyle style;

  final double num =
      Component.items.map((x) => x.price).reduce((a, b) => a + b).toDouble();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          color: Colors.teal),
      child: Column(
        children: [
          Text(
            "Saldo",
            style: style,
          ),
          Text(
            "$num €",
            style: style,
          ),
        ],
      ),
    );
  }
}
