import 'package:flutter/material.dart';
import '../app/UserModel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Giả định dữ liệu lấy từ Model
    final user = UserModel(
      name: '6451071017',
      email: 'lanhuong.nguyen@example.com',
      avatarUrl: 'https://i.pravatar.cc/300',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile 6451071017'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(user.avatarUrl),
            ),
            const SizedBox(height: 20),
            Text(
              user.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              user.email,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Edit Profile', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}