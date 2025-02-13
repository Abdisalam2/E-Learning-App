import 'package:flutter/material.dart';

class EnrollCourse extends StatefulWidget {
  const EnrollCourse({super.key});

  @override
  State<EnrollCourse> createState() => _EnrollCourseState();
}

class _EnrollCourseState extends State<EnrollCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Text(
              'Register This Course',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Fisrt Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 242, 225, 225),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Last Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 242, 225, 225),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 242, 225, 225),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
