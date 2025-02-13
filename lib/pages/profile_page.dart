import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF6366F1),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            color: const Color(0xFF1E3A8A),
            child: const Center(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
                title: Text(
                  'Abdisalam Mohamed',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'abdizalammohamed@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const ListTile(
            title: Text(
              'Account Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text(
              'Download Options',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const SizedBox(
            height: 8,
          ),
          const ListTile(
            title: Text(
              'Notification Settings',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text(
              'Privacy & Policy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 280,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color(0xFFF59E0B),
              ),
              onPressed: () {},
              child: const Text(
                'Log Out',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
