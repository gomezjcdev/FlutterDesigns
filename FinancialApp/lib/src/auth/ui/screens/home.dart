import 'package:flutter/material.dart';
import 'package:financial_app/src/auth/ui/widgets/bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [BottomNavigation(width: width)],
      ),
    );
  }
}
