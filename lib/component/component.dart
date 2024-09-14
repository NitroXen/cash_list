import 'package:cash_list/model/product.dart';

class Component {
  static List<Producto> items = [
    Producto(name: "Malboro", price: 25),
    Producto(name: "Pizza", price: 10),
    Producto(name: "Chicle", price: 12),
    Producto(name: "Caramelos", price: 15),
  ];

  static void addProduct(String name, double price) {
    items.add(Producto(name: name, price: price));
  }

  static void editProduct(int index, String name, double price) {
    items[index] = Producto(name: name, price: price);
  }

  static void removeProduct(int index) {
    items.removeAt(index);
  }
}
