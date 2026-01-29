import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.info_outline,
              size: 80,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Tentang Aplikasi',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Infoberita News adalah aplikasi mobile yang '
                  'menyediakan berita dan artikel positif untuk '
                  'menambah wawasan serta meningkatkan mood pengguna.\n\n'
                  'Aplikasi ini dibuat sebagai bagian dari tugas '
                  'Ujian Akhir Semester (UAS) mata kuliah Mobile Computing.\n\n'
                  'Fitur utama dalam aplikasi ini meliputi:\n'
                  '- Menampilkan artikel berita\n'
                  '- Pesan motivasi\n'
                  '- Halaman profil pengguna\n'
                  '- Informasi seputar aplikasi\n\n'
                  'Diharapkan aplikasi ini dapat memberikan '
                  'pengalaman membaca berita yang sederhana, '
                  'informatif, dan bermanfaat.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Versi Aplikasi : 1.0.0',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
