import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage('assets/images/admin.jpg'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Muhammad Reihan H',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Mahasiswa Teknologi Informasi',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
