import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileScreen();
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Profil Developer'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProfileInformation(),
      ),
    );
  }
}

class ProfileInformation extends StatelessWidget {
  Widget _buildFieldWithIcon(IconData icon, String text, Color iconColor) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 4.0,
              ),
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.jpg'),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Column(
            children: [
              Text(
                'Akhmad Aprizhal',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'SEMESTER 5',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        _buildFieldWithIcon(
            Icons.confirmation_number, 'NPM      : 2110020062', Colors.black),
        _buildFieldWithIcon(
            Icons.class_, 'Kelas     : 5A SI REG SIANG BJM', Colors.black),
        _buildFieldWithIcon(
            Icons.email, 'Kontak  : akhmadaprizhal@gmail.com', Colors.black),
        _buildFieldWithIcon(
            Icons.location_on, 'Alamat  : Marabahan', Colors.black),
      ],
    );
  }
}
