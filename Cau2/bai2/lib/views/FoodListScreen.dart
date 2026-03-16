import 'package:flutter/material.dart';
import '../user/FoodModel.dart';
import 'FoodCard.dart';

class FoodListScreen extends StatelessWidget {
  FoodListScreen({super.key});

  final List<FoodModel> foodItems = [
    FoodModel(name: 'Phở Bò', description: 'Phở Bò Đặc Biệt', price: '65,000 VNĐ', imageUrl: 'https://i.postimg.cc/85zXpPjM/pho.png'),
    FoodModel(name: 'Bún Chả', description: 'Bún Chả Hà Nội', price: '55,000 VNĐ', imageUrl: 'https://i.postimg.cc/9f5jVzNf/buncha.png'),
    FoodModel(name: 'Cơm Tấm', description: 'Cơm Tấm Sườn Bì Chả', price: '50,000 VNĐ', imageUrl: 'https://i.postimg.cc/7Z9Y3z1L/comtam.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DANH SÁCH MÓN ĂN 6451071017'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          // Gọi widget từ thư mục widget
          return FoodCard(food: foodItems[index]);
        },
      ),
    );
  }
}