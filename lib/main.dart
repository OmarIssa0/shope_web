import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shope_web/features/cart/presentation/view/cart_view.dart';
import 'package:shope_web/features/cart/presentation/view_model/provider/cart_provider.dart';
import 'package:shope_web/features/details/presentation/view/details_view.dart';
import 'package:shope_web/features/home/presentation/view/home_view.dart';
import 'package:shope_web/features/login/presentation/view/forgot_password_view.dart';
import 'package:shope_web/features/login/presentation/view/login_view.dart';
import 'package:shope_web/features/login/presentation/view_model/provider/user_provider.dart';
import 'package:shope_web/features/search/presentation/view/search_view.dart';
import 'package:shope_web/features/search/presentation/view_model/provider/search_provider.dart';
import 'package:shope_web/features/track_order/presentation/view/track_order_view.dart';
import 'package:shope_web/features/wishlist/presentation/view/wishlist_view.dart';
import 'package:shope_web/features/wishlist/presentation/view_model/provider/wishlist_provider.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // if (kIsWeb) {
  setPathUrlStrategy();
  // }
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyBc7ZZvJq-jz39VVNIvYMC2zs1RIgof5dE",
    authDomain: "shopeweb-24620.firebaseapp.com",
    projectId: "shopeweb-24620",
    storageBucket: "shopeweb-24620.appspot.com",
    messagingSenderId: "1081190770163",
    appId: "1:1081190770163:web:7dc679ba2f77ba5c401e86",
    measurementId: "G-2PEDX2Z4BR",
  ));
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   // DeviceOrientation.portraitDown,
  // ]);

  runApp(
    const ShopeApp(),
  );
}

class ShopeApp extends StatelessWidget {
  const ShopeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => WishlistProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        initialRoute: HomeView.idPage,
        routes: {
          HomeView.idPage: (context) => const HomeView(),
          DetailsView.idPage: (context) => const DetailsView(),
          SearchView.idPage: (context) => const SearchView(),
          LoginView.idPage: (context) => const LoginView(),
          ForgotPasswordView.idPage: (context) => const ForgotPasswordView(),
          CartView.idPage: (context) => const CartView(),
          TrackOrderView.idPage: (context) => const TrackOrderView(),
          WishlistView.idPage: (context) => const WishlistView(),
        },
      ),
    );
  }
}
