import 'package:financial_app/src/auth/ui/widgets/main_button.dart';
import 'package:flutter/material.dart';

import 'package:financial_app/src/Auth/ui/widgets/formfield_container.dart';
import 'package:financial_app/src/Auth/ui/widgets/formfield.dart';

import 'package:financial_app/src/utils/colors.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(children: [
            const Padding(padding: EdgeInsets.only(top: 60.0)),
            const CircleAvatar(
              radius: 40.0,
              backgroundColor: buttonColor,
              child: Icon(
                Icons.workspaces_filled,
                color: whiteColor,
                size: 40.0,
              ),
            ),
            const SizedBox(height: 80.0),
            FormFieldContainer(
              formField: CustomFormField(
                label: "Email Address",
                hintText: "Username@gmail.com",
                inputIcon: Icons.email_outlined,
              ),
            ),
            const SizedBox(height: 30.0),
            FormFieldContainer(
              formField: CustomFormField(
                label: "Password",
                hintText: "*********",
                inputIcon: Icons.lock_outline,
                isPasswordField: true,
                showPasswordButton: true,
              ),
            ),
            const SizedBox(height: 25.0),
            MainButton(
              text: 'Login',
              onPressed: () => Navigator.pushReplacementNamed(context, 'home')
            ),
            const SizedBox(height: 12.0),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Signup',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
