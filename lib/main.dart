import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/home/presentation/view/home_view.dart';
import 'package:shope_web/features/login/presentation/view/login_view.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown,
  ]);
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
      theme: ThemeData(useMaterial3: true),
      initialRoute: HomeView.idPage,
      routes: {
        HomeView.idPage: (context) => const HomeView(),
        DetailsView.idPage: (context) => const DetailsView(),
        SearchView.idPage: (context) => const SearchView(),
        LoginView.idPage: (context) => const LoginView(),
      },
    );
  }
}
