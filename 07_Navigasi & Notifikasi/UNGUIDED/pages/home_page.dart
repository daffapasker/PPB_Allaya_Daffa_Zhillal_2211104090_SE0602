// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:project_pencaksilat/models/product.dart';
import 'package:project_pencaksilat/pages/product_detail_page.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 1,
      name: "Seragam Pencak Silat",
      price: 100000000,
      imageUrl:
          "https://tse3.mm.bing.net/th?id=OIP.XTWi-2rMJCQWNjhWTduGWgHaHa&pid=Api&P=0&h=180",
      description: "Seragam resmi untuk latihan dan pertandingan, anti selip, anti peluru",
    ),
    Product(
      id: 2,
      name: "Samsak Pencak Silat",
      price: 2000000,
      imageUrl: "https://cf.shopee.co.id/file/925d72d9d103c0ad05b40825b8d1fe34",
      description: "Samsak atau peching Gacor",
    ),
    Product(
      id: 3,
      name: "Body Pencak Silat",
      price: 550000000,
      imageUrl:
          "https://down-id.img.susercontent.com/file/id-11134207-7qukw-lguwv9dt77qjb3",
      description: "Body super kebal, bisa menahan gempa serta lahar gunung merapi",
    ),
    // Tambahkan produk lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Pencak Silat'),
        backgroundColor: Colors.green[700],
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/profile'); // Navigasi ke UserProfilePage
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.imageUrl, width: 50, height: 50),
            title: Text(product.name),
            subtitle: Text('Rp${product.price}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
