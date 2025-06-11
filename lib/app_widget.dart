import 'package:flutter/material.dart';
import 'package:lucky_color/feature/home/home_page.dart';

/// Application level
class AppWidget extends StatelessWidget {
  /// Constructor
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
      },
    );
  }
}
