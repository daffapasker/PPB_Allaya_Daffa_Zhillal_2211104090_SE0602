import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> tourismData = [
    {
      'title': 'Pantai Laguna Lembupurwo',
      'imageUrl': 'https://upload.wikimedia.org/wikipedia/id/4/4c/Laguna_Lembupurwo.jpg',
      'description':
          'Pantai Lembupurwo merupakan sebuah pantai yang terletak di Desa Lembupurwo, Kecamatan Mirit, Kabupaten Kebumen...',
    },
    {
      'title': 'Candi Borobudur',
      'imageUrl': 'https://id.wikipedia.org/wiki/Berkas:Stupa_Borobudur.jpg',
      'description': 'Candi Borobudur adalah destinasi wisata terkenal di Indonesia dan dikunjungi oleh ribuan wisatawan...',
    },
    {
      'title': 'curug kanesia',
      'imageUrl': 'https://cdn.rri.co.id/berita/47/images/1709476352504-f/vj2qu1zexu27lhz.jpeg',
      'description': 'Curug Kanesia memiliki air yang sangat jernih sampai ikan pun keliatan apabila kita lihat dari jarak yang tidak terlalu jauh. Pengunjung juga dapat berenang dan merasakan segarnya air di Curug Kanesia. Curug ini memiliki kedalaman kurang lebih 7 meter sehingga cocok bagi pecinta snorkeling....',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata'),
      ),
      body: ListView.builder(
        itemCount: tourismData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              tourismData[index]['imageUrl']!,
              width: 100,
              fit: BoxFit.cover,
            ),
            title: Text(tourismData[index]['title']!),
            subtitle: Text(tourismData[index]['description']!.substring(0, 50) + '...'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    title: tourismData[index]['title']!,
                    imageUrl: tourismData[index]['imageUrl']!,
                    description: tourismData[index]['description']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  DetailScreen({
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                imageUrl,
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
