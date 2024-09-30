import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        // Menggunakan tema warna biru pastel
        primaryColor: Colors.blue[300],
        scaffoldBackgroundColor: Colors.white,
        
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Foto profil dengan border lingkaran biru pastel
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue[300]!,
                  width: 4,
                ),
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Icon(Icons.person_outline, size: 60, color: Colors.blue),
              ),
            ),

            const SizedBox(height: 10),

            // Informasi profil dalam bentuk card minimalis
            ProfileInfoCard(
              icon: Icons.person,
              title: 'Full Name',
              subtitle: 'Allaya Daffa Zhillal',
              actionIcon: Icons.edit,
            ),

            ProfileInfoCard(
              icon: Icons.male,
              title: 'Gender',
              subtitle: 'Male',
              actionIcon: Icons.swap_horiz,
            ),

            ProfileInfoCard(
              icon: Icons.school,
              title: 'NIM',
              subtitle: '2211104090',
              actionIcon: Icons.info_outline,
            ),

            ProfileInfoCard(
              icon: Icons.email,
              title: 'Email',
              subtitle: 'allayadaffa@student.telkomuniversity.ac.id',
              actionIcon: Icons.mail_outline,
            ),

            ProfileInfoCard(
              icon: Icons.location_city,
              title: 'University',
              subtitle: 'Universitas Telkom Purwokerto',
              actionIcon: Icons.location_on,
            ),
          ],
        ),
      ),
    );
  }
}

// Widget custom untuk card profil minimalis
class ProfileInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final IconData actionIcon;

  const ProfileInfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.actionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[50],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blue[300], size: 30),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(actionIcon, color: Colors.blue[300]),
              onPressed: () {
                // Tambahkan fungsionalitas di sini
              },
            ),
          ],
        ),
      ),
    );
  }
}
