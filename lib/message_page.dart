import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.message,
            size: 80,
            color: Colors.blue,
          ),
          const SizedBox(height: 20),
          const Text(
            'Pesan Motivasi Hari Ini',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Klik tombol di bawah untuk menampilkan pesan motivasi.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),

          // BUTTON PESAN
          ElevatedButton.icon(
            icon: const Icon(Icons.notifications),
            label: const Text('Tampilkan Pesan'),
            onPressed: () {
              // SNACKBAR
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Pesan motivasi ditampilkan'),
                  duration: Duration(seconds: 2),
                ),
              );

              // DIALOG
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Motivasi'),
                  content: const Text(
                    'Tetap semangat, konsisten belajar, dan jangan takut mencoba hal baru!',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
