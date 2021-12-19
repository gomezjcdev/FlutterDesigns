import 'package:financial_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              Padding(padding: EdgeInsets.only(top: 60.0)),
              CircleAvatar(
                radius: 40.0,
                backgroundColor: imagesColor,
                child: Text(
                  "FA",
                  style: TextStyle(color: whiteColor, fontSize: 24),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
