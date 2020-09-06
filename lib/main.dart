import 'package:flutter/material.dart';

import './views/home/HomeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Basics',
      home: HomeView(),
    );
  }
}
