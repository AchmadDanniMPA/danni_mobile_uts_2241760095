import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), //Jarak antar UI
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Aplikasi mobile sederhana dibuat oleh\nA Danni MPA (2241760095)\nuntuk pemenuhan nilai UTS Pemrograman Mobile.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), //Memberi jarak antar elemen UI
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //Menutup halaman yang sedang dikunjungi
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('Kembali ke Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
