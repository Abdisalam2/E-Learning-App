import 'package:flutter/material.dart';

import 'package:flutter_lo_app/pages/splash_screen.dart';

void main() {
  runApp(const MayAPP());
}

class MayAPP extends StatelessWidget {
  const MayAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
