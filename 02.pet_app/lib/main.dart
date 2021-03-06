import 'package:flutter/material.dart';

import 'package:pet_app/pages/home.dart';
import 'package:pet_app/themes/theme.dart';
import 'package:pet_app/widgets/custom_navigation_bar.dart';
import 'package:pet_app/widgets/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet App',
      theme: AppTheme.customTheme,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: const [
                Header(),
                Home(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }
}
