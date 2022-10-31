import 'package:flutter/material.dart';
import 'package:ui_carrot_market/screens/main_screen.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'carrot_market_ui',
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
        theme: theme,
    );
  }
}
