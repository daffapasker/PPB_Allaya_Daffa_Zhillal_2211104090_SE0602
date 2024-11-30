import 'package:flutter/material.dart';
import 'package:project_pencaksilat/models/product.dart';
import 'cart_page.dart';
import 'package:project_pencaksilat/pages/cart_page.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl, width: double.infinity),
            SizedBox(height: 16),
            Text(
              product.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Rp${product.price}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text(product.description),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Tambahkan produk ke keranjang
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CartPage(),
                ));
              },
              child: Text("Tambahkan ke Keranjang"),
            ),
          ],
        ),
      ),
    );
  }
}
