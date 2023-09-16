import 'package:flutter/material.dart';
import 'package:flutter_test_task/theme/theme.dart';

import 'pages/mainPage/view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test task',
      theme: mainTheme,
      home: const MainPage(),
    );
  }
}
