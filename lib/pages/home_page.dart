import 'package:flutter/material.dart';
import 'package:flutter_lo_app/pages/courses_page.dart';
import 'package:flutter_lo_app/pages/home_content.dart';
import 'package:flutter_lo_app/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Track the selected page

  // List of pages
  final List<Widget> _pages = [
    const HomeContent(), 
    const CoursesPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Show selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFF59E0B),
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Switch between pages
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_sharp), label: 'Profile'),
        ],
        backgroundColor:  const Color(0xFF6366F1),
      ),
    );
  }
}