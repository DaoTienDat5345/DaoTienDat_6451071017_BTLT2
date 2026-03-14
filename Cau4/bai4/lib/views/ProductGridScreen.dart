import 'package:flutter/material.dart';
import '../user/ProductModel.dart';
import 'ProductItem.dart';

class ProductGridScreen extends StatelessWidget {
  ProductGridScreen({super.key});

  final List<ProductModel> products = [
    ProductModel(name: 'Giày Chạy Bộ Nam', price: 'đ950,000', imageUrl: 'https://picsum.photos/id/103/200/200'),
    ProductModel(name: 'Áo Thun Tập Luyện', price: 'đ320,000', imageUrl: 'https://picsum.photos/id/250/200/200'),
    ProductModel(name: 'Bóng Đá Thế Thao', price: 'đ510,000', imageUrl: 'https://picsum.photos/id/273/200/200'),
    ProductModel(name: 'Túi Thể Thao', price: 'đ415,000', imageUrl: 'https://picsum.photos/id/488/200/200'),
    ProductModel(name: 'Mũ Lưỡi Trai', price: 'đ185,000', imageUrl: 'https://picsum.photos/id/652/200/200'),
    ProductModel(name: 'Vớ Thể Thao', price: 'đ95,000', imageUrl: 'https://picsum.photos/id/718/200/200'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Cửa Hàng Thế Thao'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8, // Điều chỉnh để ô Grid cao hơn chiều ngang
        ),
        itemBuilder: (context, index) {
          return ProductItem(product: products[index]);
        },
      ),
    );
  }
}