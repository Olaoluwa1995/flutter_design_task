import 'package:design_test/views/tab_views.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Design Test',
      debugShowCheckedModeBanner: false,
      home: TabViews(),
    );
  }
}
