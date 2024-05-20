import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset('assets/news_image.jpg'), // Update with actual path
            SizedBox(height: 8),
            Text(
              'Yapay Zekâ Destekli Tarım: Verimlilikte Yeni Dönem Başlıyor',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('15.05.2024', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 8),
            Text(
              'Yapay zekâ teknolojileri, tarım sektöründe devrim yaratıyor. Sensörler ve veri analizi ile çiftçiler, mahsul verimliliğini artırıyor, su ve gübre kullanımını optimize ediyor. Bu yenilikler, sürdürülebilir tarımı destekleyerek gıda üretiminde önemli bir artış sağlıyor.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}