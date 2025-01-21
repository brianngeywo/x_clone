import 'package:flutter/material.dart';
import 'package:x_clone/main_page/presentation/main_page_screen/ui/widgets/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X Clone',
      home: MainPage(),
    );
  }
}
