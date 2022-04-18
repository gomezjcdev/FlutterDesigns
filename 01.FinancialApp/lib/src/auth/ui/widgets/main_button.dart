import 'package:financial_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {

  final String text;
  final Function onPressed;

  const MainButton({
    Key? key,
    required this.text,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: buttonColor,
        ),
        onPressed: () => onPressed(),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
