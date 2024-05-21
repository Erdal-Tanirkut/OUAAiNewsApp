import 'dart:convert';
import 'package:flutter/material.dart';
import 'NewsItem.dart';
import 'newsModel.dart';
import 'profilekrani.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // JSON verisini burada string olarak tanımladım
  final String jsonString = '''
  {
    "n1": {
      "category": "Teknoloji",
      "imageUrl": "images/tarim.png",
      "title": "Yapay Zekâ Destekli Tarım: Verimlilikte Yeni Dönem Başlıyor",
      "content": "Yapay zekâ teknolojileri, tarım sektöründe devrim yaratıyor. Sensörler ve veri analizi ile çiftçiler, mahsul verimliliğini artırıyor, su ve gübre kullanımını optimize ediyor. Bu yenilikler, sürdürülebilir tarımı destekleyerek gıda üretiminde önemli bir artış sağlıyor."
    },
    "n2": {
      "category": "Teknoloji",
      "imageUrl": "images/5g.png",
      "title": "5G Teknolojisi, Akıllı Şehirlerin Kapısını Aralıyor",
      "content": "5G teknolojisi, şehir altyapısında büyük değişiklikler getiriyor. Yüksek hızlı internet bağlantısı sayesinde akıllı trafik yönetimi, enerji verimliliği ve güvenlik sistemleri daha da gelişiyor. Bu dönüşüm, şehirlerde yaşam kalitesini artırırken, çevresel sürdürülebilirliği de destekliyor."
    },
    "n3": {
      "category": "Teknoloji",
      "imageUrl": "images/telepatik.png",
      "title": "Telepatik İnternet: Beyin Dalgalarıyla Mesaj Gönderme Dönemi Başladı",
      "content": "Yeni bir teknoloji, internet üzerinden beyin dalgalarıyla telepatik iletişimi mümkün kılıyor. Bilim insanları, bir kişinin düşündüğü kelimeleri anında karşı tarafa iletebilen bir cihaz geliştirdi. Bu buluş, iletişimde devrim yaratacak gibi görünüyor"
    },
    "n4": {
      "category": "Spor",
      "imageUrl": "images/kosuayak.png",
      "title": "Koşu Ayakkabılarıyla Uçmak: Yeni Spor Dalı 'Air Running' Tanıtıldı",
      "content": "Bir spor malzemeleri şirketi, kullanıcıların koşarken yerden yükselmesini sağlayan özel ayakkabılar üretti. 'Air Running' adı verilen bu yeni spor dalı, koşucuların havada süzülerek yarışmalarına imkan tanıyor. Bu yenilik, sporseverler arasında büyük heyecan yarattı"
    },
    "n5": {
      "category": "İklim",
      "imageUrl": "images/kutup.png",
      "title": "Kutup Bölgelerinde Erime Hızlanıyor: Deniz Seviyeleri Tehdit Altında",
      "content": "Bilim insanları, kutup bölgelerindeki buzulların erime hızının son yıllarda iki kat arttığını rapor etti. Bu durum, deniz seviyelerinin yükselmesine ve kıyı bölgelerinin tehdit altında kalmasına neden oluyor. Uzmanlar, iklim değişikliğiyle mücadelede acil önlemler alınması gerektiğini vurguluyor."
    },
    "n6": {
      "category": "Spor",
      "imageUrl": "images/yüzme.png",
      "title": "Olimpiyatlarda Yeni Rekor: Yüzmede 100 Metre Serbestte Tarihi Performans",
      "content": "Tokyo Olimpiyatları'nda, yüzmede 100 metre serbest stil yarışında yeni bir dünya rekoru kırıldı. Sporcu, 46.91 saniyelik derecesiyle altın madalyayı kazanırken, yüzme tarihinde yeni bir sayfa açtı."
    }
  }
  ''';

  // JSON verisini ayrıştırıp News modeline dönüştürme
  List<News> parseJson(String jsonString) {
    final parsed = json.decode(jsonString).cast<String, dynamic>();
    return parsed.values.map<News>((json) => News.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<News> newsList = parseJson(jsonString);

    return Scaffold(
      appBar: AppBar(
        title: Text('HaberApp'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const profilePage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Merak ettiğin her şey burada',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Haberler',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                FilterChip(label: Text('Teknoloji'), onSelected: (_) {}),
                SizedBox(width: 8),
                FilterChip(label: Text('Spor'), onSelected: (_) {}),
                SizedBox(width: 8),
                FilterChip(label: Text('Doğa'), onSelected: (_) {}),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: newsList.length,
                itemBuilder: (context, index) {
                  return NewsItem(
                    imageUrl: newsList[index].imageUrl,
                    title: newsList[index].title,
                    category: newsList[index].category,
                    content: newsList[index].content,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const profilePage()),
                );
              },
              icon: Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

