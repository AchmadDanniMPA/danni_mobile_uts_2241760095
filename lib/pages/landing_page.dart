import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold adalah struktur dasar halaman yang menyediakan struktur standar, dalam penerapan saya menggunakan Body
    return Scaffold(
      //Container merupakan widget untuk mengatur layout, di sini untuk mengatur background
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        //Untuk membuat bagian yang ada di dalamnya menjadi ketengah
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Untuk menampilkan tulisan dengan pengaturan yang seperti di bawah
              Text(
                'Selamat Datang Di Aplikasi\nA Danni MPA\n2241760095',
                textAlign: TextAlign.center, //Mengatur agar ditampilkan ketengah
                style: TextStyle( //Mengatur style tulisan
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20), //Memberi jarak antar elemen UI
              ElevatedButton( //Memberi efek bayangan
                onPressed: () {
                  Navigator.pushNamed(context, '/login'); //Callback yang memanggil/memindahkan ke login ketika di tekan
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
