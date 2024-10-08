import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rekomendasi Wisata'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Judul Tempat Wisata
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pantai Laguna Lembupurwo',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),

              // Gambar Tempat Wisata
              Image.network(
                'https://upload.wikimedia.org/wikipedia/id/4/4c/Laguna_Lembupurwo.jpg', 
                height: 200,
                fit: BoxFit.cover, // Mengatur tampilan gambar agar lebih baik
              ),
              SizedBox(height: 16),

              // Deskripsi Tempat Wisata
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Pantai Lembupurwo merupakan sebuah pantai yang terletak di Desa Lembupurwo, Kecamatan Mirit, Kabupaten Kebumen, Jawa Tengah. Untuk menuju ke lokasi pantai ini, banyak jalur alternatif yang dapat digunakan. Pantai ini terletak 30 km sebelah tenggara dari pusat Kabupaten Kebumen. Bagi anda yang berasal dari arah timur yang kebetulan sedang melintasi jalan selatan-selatan atau jalan Daendels dari arah timur seperti Daerah Istimewa Yogyakarta maupun dari arah barat atau Kabupaten Cilacap dapat langsung menuju ke Pantai Lembupurwo karena berjarak 1 km dari jalan alternatif tersebut. Saat ini sudah ada JLSS (Jalan Lintas Selatan Selatan) yang letaknya kurang lebih 500 meter dari Jalan Daendels.Pantai ini memiliki daya tarik berupa laguna atau perairan dangkal yang terpisah dari laut, karena adanya perbukitan pasir',
                  textAlign: TextAlign.justify, // Meratakan teks
                ),
              ),
              SizedBox(height: 16),

              // Tombol Kunjungi
              ElevatedButton(
                onPressed: () {
                  // Tambahkan kode tindakan di sini!
                },
                child: Text('Kunjungi Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
