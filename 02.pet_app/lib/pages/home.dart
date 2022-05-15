import 'package:flutter/material.dart';
import 'package:pet_app/widgets/filters.dart';
import 'package:pet_app/widgets/search.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 40),
        Search(),
        SizedBox(height: 20),
        Filters(),
      ],
    );
  }
}
