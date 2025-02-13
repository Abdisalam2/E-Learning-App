import 'package:flutter/material.dart';
import 'package:flutter_lo_app/pages/enroll_course.dart';

import 'package:flutter_lo_app/reusable%20widgets/course_card.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 252),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6366F1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'MIRE E-LEARNING',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1F2937)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back \nAbdisalam',
                  style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 2, 2, 126),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xFF6366F1),
                    ),
                    onPressed: () {},
                    child: const Text('Java'),
                  ),
                  const SizedBox(width: 6),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xFF6366F1),
                    ),
                    onPressed: () {},
                    child: const Text('C++'),
                  ),
                  const SizedBox(width: 6),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xFF6366F1),
                    ),
                    onPressed: () {},
                    child: const Text('Python'),
                  ),
                  const SizedBox(width: 6),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xFF6366F1),
                    ),
                    onPressed: () {},
                    child: const Text('Flutter'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recommended Courses',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 2, 126)),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CourseCard(
                    title: 'Java',
                    imagePath: 'assets/images/java.png',
                    eNrollButton: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const EnrollCourse();
                          },
                        ),
                      );
                    },
                    vIewButton: () {},
                  ),
                  const SizedBox(width: 8),
                  CourseCard(
                    title: 'Python',
                    imagePath: 'assets/images/python.png',
                    eNrollButton: () {
                      // const EnrollCourse();
                    },
                    vIewButton: () {},
                  ),
                  const SizedBox(width: 8),
                  CourseCard(
                    title: 'Flutter',
                    imagePath: 'assets/images/flutter.png',
                    eNrollButton: () {
                      // const EnrollCourse();
                    },
                    vIewButton: () {},
                  ),
                  const SizedBox(width: 8),
                  CourseCard(
                      title: 'C++',
                      imagePath: 'assets/images/cplus.png',
                      eNrollButton: () {
                        // const EnrollCourse();
                      },
                      vIewButton: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
