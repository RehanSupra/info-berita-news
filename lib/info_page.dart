import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.app_settings_alt,
            size: 80,
            color: Colors.green,
          ),
          SizedBox(height: 20),
          Text(
            'Informasi Aplikasi',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Nama Aplikasi : Infoberita News\n\n'
                'Versi Aplikasi : 1.0.0\n\n'
                'Platform : Android\n\n'
                'Dibuat untuk memenuhi tugas\n'
                'Ujian Akhir Semester (UAS)\n'
                'Mata Kuliah Mobile Programming\n\n'
                'Aplikasi ini menampilkan berita, '
                'artikel positif, pesan motivasi, '
                'dan informasi pengguna.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            '© 2026 Infoberita News',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
