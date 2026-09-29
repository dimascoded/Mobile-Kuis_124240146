import 'package:flutter/material.dart';
import 'login.dart';

class ProfilePage extends StatefulWidget {
  final String nama;
  const ProfilePage({super.key, required this.nama});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;
  List<Color> colors = [Colors.red, Colors.green, Colors.yellow];
  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
             
              Icon(Icons.account_circle, size: 100, color: colors[_selectedIndex]),
              SizedBox(height: 20),
              Text(
                widget.nama,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
               Text(
                'Saya bersumpah mengerjakan soal kuis ini dengan jujur dan tidak melakukan kecurangan apapun itu',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 40),
            
             InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Container(
                width: 30,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors[0]
                ),
              ),
             ),

             InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Container(
                width: 30,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors[1]
                ),
              ),
             ),

             InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Container(
                width: 30,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors[2]
                ),
              ),
             ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colors[_selectedIndex],
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 45),
                ),
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}