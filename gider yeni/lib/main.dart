
import 'package:flutter/material.dart';

void main() {
  runApp(GiderTakipApp());
}

class GiderTakipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gider Takip',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KullaniciSecimEkrani(),
    );
  }
}

class KullaniciSecimEkrani extends StatelessWidget {
  final List<String> kullanicilar = ['Özgür', 'Onur', 'Serhat'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kullanıcı Seçimi')),
      body: ListView.builder(
        itemCount: kullanicilar.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(kullanicilar[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashboardEkrani(kullanici: kullanicilar[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DashboardEkrani extends StatelessWidget {
  final String kullanici;

  DashboardEkrani({required this.kullanici});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard - \$kullanici')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Genel Bakış', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Toplam Gider: ₺0'),
            Text('Bu Ayki Gider: ₺0'),
            Text('Ödenen: ₺0 / Kalan: ₺0'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Yeni Gider Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
