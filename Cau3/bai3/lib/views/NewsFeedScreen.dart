import 'package:flutter/material.dart';

import '../user/NewsModel.dart';
import '../widget/NewsCard.dart';

class NewsFeedScreen extends StatelessWidget {
  NewsFeedScreen({super.key});

  final List<NewsModel> newsItems = [
    NewsModel(
      title: 'Article Title 1: Flutter is awesome!',
      description: 'Learn about cross-platform development with the latest news on Flutter framework updates.',
      imageUrl: 'https://picsum.photos/id/1/600/300',
    ),
    NewsModel(
      title: 'Article Title 2: Local Coffee Shop Opens',
      description: 'The cozy new cafe, "The Daily Grind," offers local brews and a relaxing atmosphere.',
      imageUrl: 'https://picsum.photos/id/42/600/300',
    ),
    NewsModel(
      title: 'Article Title 3: New Tech Gadgets',
      description: 'Discover the newest smartphones, smartwatches, and innovative devices hitting the market.',
      imageUrl: 'https://picsum.photos/id/60/600/300',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News 6451071017'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: newsItems.map((item) => NewsCard(news: item)).toList(),
        ),
      ),
    );
  }
}