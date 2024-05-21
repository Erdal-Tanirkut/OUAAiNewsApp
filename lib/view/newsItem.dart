import 'package:flutter/material.dart';
import 'haberdetayekrani.dart';
class NewsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;
  final String content;

  NewsItem({
    required this.imageUrl,
    required this.title,
    required this.category,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Info(
                imageUrl: imageUrl,
                title: title,
                content: content,
                category: category,
              ),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.all(8), // Tüm kenarlara padding uygula
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red), // Kırmızı renkte bir border ekle
            borderRadius:BorderRadius.circular(10),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(imageUrl, fit: BoxFit.cover, height: 150, width: double.infinity),
              ),
              SizedBox(height: 8),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text(category),
            ],
          ),
        ),
      ),
    );
  }
}
