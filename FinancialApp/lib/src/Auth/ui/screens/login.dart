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
        child: Center(
          child: Column(children: [
            const Padding(padding: EdgeInsets.only(top: 60.0)),
            const CircleAvatar(
              radius: 40.0,
              backgroundColor: imagesColor,
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
            )
          ]),
        ),
      ),
    );
  }
}
