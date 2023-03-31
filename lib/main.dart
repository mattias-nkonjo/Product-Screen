import 'package:dynamic_color/dynamic_color.dart';
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
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      return MaterialApp(
        title: 'Flutter Test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: lightDynamic ?? GeepxTheme.defaultDarkColorScheme,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: darkDynamic ?? GeepxTheme.defaultLightColorScheme,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        home: const ProductPage(),
      );
    });
  }
}
