import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> wisataList = [
    {
      'nama': 'Pantai Laguna Lembupurwo',
      'imageUrl': 'https://upload.wikimedia.org/wikipedia/id/4/4c/Laguna_Lembupurwo.jpg',
      'deskripsi':
          'Pantai Lembupurwo merupakan sebuah pantai yang terletak di Desa Lembupurwo, Kecamatan Mirit, Kabupaten Kebumen...',
    },
    {
      'nama': 'Candi Borobudur',
      'imageUrl': 'https://upload.wikimedia.org/wikipedia/commons/7/77/Stupa_Borobudur.jpg',
      'deskripsi': 'Candi Borobudur adalah destinasi wisata terkenal di Indonesia dan dikunjungi oleh ribuan wisatawan...',
    },
    {
      'nama': 'Curug Lawe',
      'imageUrl': 'https://upload.wikimedia.org/wikipedia/commons/7/71/Curug_Lawe_-_panoramio.jpg',
      'deskripsi': 'Disebut Curug Lawe karena air yang jatuh dari tebing curam itu terlihat bagai benang-benang putih...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Wisata Jawa'),
              background: Image.network(
                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/76/9a/93/dataran-tinggi-dieng.jpg?w=800&h=500&s=1',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.green.shade700,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return wisataCard(
                  wisataList[index]['nama']!,
                  wisataList[index]['imageUrl']!,
                  wisataList[index]['deskripsi']!,
                );
              },
              childCount: wisataList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget wisataCard(String nama, String imageUrl, String deskripsi) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 6,
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                nama,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                deskripsi,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol diklik
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Kunjungi Sekarang'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
