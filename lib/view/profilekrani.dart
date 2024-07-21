import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/profile.png'), // Update with actual path
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: Text('Edit profile image', style: TextStyle(color: Colors.blue)),
            ),
            ListTile(
              title: Text('Name'),
              subtitle: Text('Yigit Ozgul'),
            ),
            ListTile(
              title: Text('Userme'),
              subtitle: Text('@yigitt14'),
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text('akademi@hotmail.com'),
            ),

          ],
        ),
      ),
    );
  }
}