import 'package:flutter/material.dart';
import '../models/CategoryModel.dart';

class CategoryMenuScreen extends StatefulWidget {
  const CategoryMenuScreen({super.key});

  @override
  State<CategoryMenuScreen> createState() => _CategoryMenuScreenState();
}

class _CategoryMenuScreenState extends State<CategoryMenuScreen> {
  // Khởi tạo dữ liệu
  final List<CategoryModel> _categories = [
    CategoryModel(header: 'Fruits', items: ['🍎 Apple', '🍌 Banana', '🍊 Orange']),
    CategoryModel(header: 'Vegetables', items: ['🥦 Broccoli', '🥕 Carrot', '🥬 Lettuce']),
    CategoryModel(header: 'Drinks', items: ['☕ Coffee', '🍵 Tea', '🥤 Soda']),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Menu'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Expansion Menu',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Using ExpansionPanelList',
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 20),

            // Widget danh sách mở rộng
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _categories[index].isExpanded = isExpanded;
                });
              },
              children: _categories.map<ExpansionPanel>((CategoryModel category) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(title: Text(category.header));
                  },
                  body: Column(
                    children: category.items.map((item) => ListTile(
                      title: Text(item),
                      onTap: () {},
                    )).toList(),
                  ),
                  isExpanded: category.isExpanded,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}