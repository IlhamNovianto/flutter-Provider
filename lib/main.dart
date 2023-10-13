import 'package:flutter/material.dart';
import 'package:tugas_akhir/provider/cartProvider.dart';
import 'package:tugas_akhir/provider/favoriteProvider.dart';
import 'package:tugas_akhir/welcomePage.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => FavoriteProvider()),
          ChangeNotifierProvider(create: (_) => CartProvider()),
        ],
        child: const MaterialApp(
            debugShowCheckedModeBanner: false, home: WelcomePage()),
      );
}
