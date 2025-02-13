import 'package:flutter/material.dart';
import 'package:flutter_lo_app/reusable%20widgets/course_card.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 252),
      appBar: AppBar(
      backgroundColor: const Color(0xFF6366F1),
        title: const Text(
          'Availible Courses',
          style: TextStyle(fontWeight: FontWeight.bold, color:   Color(0xFF1F2937)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
               const SizedBox(height: 30,),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  Text(
                    'Featured Courses',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 2, 126)),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseCard(
                        title: 'Java',
                        imagePath: 'assets/images/java.png',
                        eNrollButton: () {},
                        vIewButton: () {}),
                         const SizedBox(width: 8,),
                    Row(
                      children: [
                        CourseCard(
                            title: 'Python',
                            imagePath: 'assets/images/python.png',
                            eNrollButton: () {},
                            vIewButton: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recomended Courses',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 2, 126)),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseCard(
                        title: 'Flutter',
                        imagePath: 'assets/images/flutter.png',
                        eNrollButton: () {},
                        vIewButton: () {}),
                        const SizedBox(width: 8,),
                    Row(
                      children: [
                        CourseCard(
                            title: 'C++',
                            imagePath: 'assets/images/cplus.png',
                            eNrollButton: () {},
                            vIewButton: () {}),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
