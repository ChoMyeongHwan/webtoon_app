import 'package:flutter/material.dart';
import 'package:webtoon_app/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // 디버그 표시 제거
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
