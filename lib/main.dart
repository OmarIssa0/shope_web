import 'package:flutter/material.dart';
import 'package:shope_web/features/home/presentation/view/home_view.dart';

void main() {
  runApp(
    const ShopeApp(),
  );
}

class ShopeApp extends StatelessWidget {
  const ShopeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
