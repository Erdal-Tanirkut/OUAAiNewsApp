import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_deneme/view/profilekrani.dart';
import 'askaipage.dart';

class Info extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String content;
  final String category;
  const Info({required this.imageUrl, required this.title, required this.content,required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TICU"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.asset(imageUrl), // Resmi burada göster
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '15.05.2024',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 8),
              Text(
                content,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
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
                  MaterialPageRoute(builder: (context) => asktoAI(content: content)),
                );
              },
              icon: Icon(Icons.account_balance),
            ),
            label: 'Check Truth',
          ),
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