import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Menerima username dari login
    final String username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton( //Memberi efek bayangan
              onPressed: () {
                Navigator.pushNamed(context, '/profile', arguments: username); //Navigasi ke profile page dengan mengirim username
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 60),
              ),
              child: Text('Profil', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 20), //Memberi jarak antar elemen UI
            ElevatedButton( //Memberi efek bayangan
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 60),
              ),
              child: Text('Tentang', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 20), //Memberi jarak antar elemen UI
            ElevatedButton( //Memberi efek bayangan
              onPressed: () {
                Navigator.pop(context); //Menutup halaman yang sedang dikunjungi
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 60),
              ),
              child: Text('Logout', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
