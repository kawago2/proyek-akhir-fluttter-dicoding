import 'package:proyek_akhir/models/produk.dart';

class Order {
  final Product product;
  final int numItems;
  Order({required this.product, required this.numItems});
}

List<Order> demoOrder = [
  Order(product: demoProducts[0], numItems: 2),
  Order(product: demoProducts[1], numItems: 1),
];
