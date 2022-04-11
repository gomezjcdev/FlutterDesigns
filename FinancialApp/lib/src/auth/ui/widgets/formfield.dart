import 'package:financial_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String label;
  final String hintText;
  final IconData inputIcon;
  bool isPasswordField;
  final bool showPasswordButton;

  CustomFormField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.inputIcon,
    this.isPasswordField = false,
    this.showPasswordButton = false,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.label,
        style: const TextStyle(color: textColor, fontSize: 16.0),
      ),
      TextField(
        obscureText: widget.isPasswordField,
        autofocus: false,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            icon: Icon(
              widget.inputIcon,
              color: colorBlack,
            ),
            suffixIcon: widget.showPasswordButton
                ? IconButton(
              icon: const Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  widget.isPasswordField = !widget.isPasswordField;
                });
              },
            )
                : null),
      )
    ]);
  }
}
