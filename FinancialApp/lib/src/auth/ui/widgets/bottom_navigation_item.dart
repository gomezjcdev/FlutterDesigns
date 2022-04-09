import 'package:financial_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final bool isMainOption;
  final IconData icon;

  const BottomNavigationItem(
      {Key? key, this.isMainOption = false, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isMainOption ? _mainOption() : _option();
  }

  Widget _mainOption() {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Icon(icon, color: whiteColor),
    );
  }

  Widget _option() {
    return Icon(icon, color: tabOptionsColor);
  }
}
