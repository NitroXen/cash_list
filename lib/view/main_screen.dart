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
                child: ListView(children: [
              ListTile(
                title: Text("Saldo"),
                subtitle: Text("0 €"),
              ),
              ListTile(
                title: Text("Saldo"),
                subtitle: Text("0 €"),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}

class TitleCount extends StatelessWidget {
  const TitleCount({
    super.key,
    required this.style,
  });

  final TextStyle style;

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
            "0 €",
            style: style,
          ),
        ],
      ),
    );
  }
}
