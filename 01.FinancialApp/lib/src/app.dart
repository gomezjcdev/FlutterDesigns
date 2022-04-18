import 'package:flutter/material.dart';

import 'package:financial_app/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Financial App',
      initialRoute: 'login',
      routes: getApplicationRoutes(),
    );
  }
}
