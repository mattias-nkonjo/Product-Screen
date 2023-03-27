import 'package:flutter/material.dart';
import 'package:geepx_test/src/pages/product_page.dart';
import 'package:geepx_test/src/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      debugShowCheckedModeBanner: false,
      theme: GeepxTheme.lightTheme,
      darkTheme: GeepxTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const ProductPage(),
    );
  }
}
