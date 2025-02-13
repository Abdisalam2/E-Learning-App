import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback eNrollButton;
  final VoidCallback vIewButton;
  const CourseCard(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.eNrollButton,
      required this.vIewButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 205, 215, 223),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color.fromARGB(255, 2, 2, 126),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Enroll course',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 2, 126),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'View course',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 2, 126),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
