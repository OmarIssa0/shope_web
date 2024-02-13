import 'package:flutter/material.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/home/presentation/view/home_view.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';

void main() {
  runApp(
    const ShopeApp(),
  );
}

class ShopeApp extends StatelessWidget {
  const ShopeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.idPage,
      routes: {
        HomeView.idPage: (context) => const HomeView(),
        DetailsView.idPage: (context) => const DetailsView(),
        SearchView.idPage: (context) => const SearchView()
      },
      theme: ThemeData(useMaterial3: true),
    );
  }
}
