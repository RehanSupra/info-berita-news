import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  List articles = [];
  bool isLoading = true;

  Future<void> getArticles() async {
    try {
      var url = Uri.parse(
          'http://10.0.2.2/infoberita_news/get_articles.php');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        if (data is List && data.isNotEmpty) {
          articles = data;
        } else {
          articles = dummyArticles;
        }
      } else {
        articles = dummyArticles;
      }
    } catch (e) {
      articles = dummyArticles;
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getArticles();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        String imageUrl =
            articles[index]['image_url']?.toString() ?? '';

        // 🔥 JIKA IMAGE KOSONG → PAKE DEFAULT
        if (imageUrl.isEmpty) {
          imageUrl =
          'https://picsum.photos/600/300?random=${index + 10}';
        }

        return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(
                articles[index]['title'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                articles[index]['content'],
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        );
      },
    );
  }
}

/* ===========================
   DUMMY (BACKUP TOTAL)
   =========================== */

final List dummyArticles = [
  {
    "title": "Hidup Sehat dan Bahagia",
    "content":
    "Menjaga kesehatan mental sangat penting untuk kehidupan.",
    "image_url": "https://picsum.photos/600/300?random=1"
  },
  {
    "title": "Motivasi Pagi Hari",
    "content":
    "Awali hari dengan pikiran positif agar semangat.",
    "image_url": "https://picsum.photos/600/300?random=2"
  },
  {
    "title": "Teknologi Digital",
    "content":
    "Perkembangan teknologi digital semakin pesat.",
    "image_url": "https://picsum.photos/600/300?random=3"
  }
];
