import 'package:flutter/material.dart';

import 'package:financial_app/src/Auth/ui/screens/login.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder> {
    'login': (_) => const Login()
  };
}
