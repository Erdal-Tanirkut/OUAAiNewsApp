import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
              backgroundImage: AssetImage('assets/profile.jpg'), // Update with actual path
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: Text('Edit profile image', style: TextStyle(color: Colors.blue)),
            ),
            ListTile(
              title: Text('Name'),
              subtitle: Text('Helena Hills'),
            ),
            ListTile(
              title: Text('Username'),
              subtitle: Text('@username'),
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text('name@domain.com'),
            ),
            ListTile(
              title: Text('Bio'),
              subtitle: Text('A description of this user.'),
            ),
          ],
        ),
      ),
    );
  }
}