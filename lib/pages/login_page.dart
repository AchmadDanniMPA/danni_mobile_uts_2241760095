import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState(); //Penerapan stateful widget, untuk menampilkan state tertentu di sini untuk ketika login gagal
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController(); //Kontroller input usernam
  final TextEditingController _passwordController = TextEditingController(); //Kontroller input password
  String _errorMessage = ''; //Variabel untuk menyimpan pesan error

  void _login() {//Penerapan login statis, username Danni dan Password 123456789
    if (_usernameController.text == 'Danni' && _passwordController.text == '123456789') {
      Navigator.pushNamed(context, '/home', arguments: _usernameController.text); //Jika inputan benar maka akan diarahkan ke home
    } else {
      setState(() {
        _errorMessage = 'Password atau Username Salah!'; //Jika salah maka akan tampil error
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Laman Login')), //Judul halaman
      body: Padding(
        padding: const EdgeInsets.all(16.0), //Jarak antar UI
        child: Column( //Menata alignment
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), //Memberi jarak antar elemen UI
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), //Memberi jarak antar elemen UI
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), //Memberi jarak antar elemen UI
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
            if (_errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
