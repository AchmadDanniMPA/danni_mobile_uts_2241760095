import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Menerima username dari home page
    final String username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Mengatur alignment ke tengah
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            SizedBox(height: 20), //Memberi jarak antar elemen UI
            Text( 
              'Username: $username', //Username dinamis tergantung yang login
              style: TextStyle(fontSize: 24),
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
    );
  }
}
