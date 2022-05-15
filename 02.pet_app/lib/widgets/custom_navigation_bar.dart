import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app/themes/theme.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int optionSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0XFFFBFBFA),
          spreadRadius: 20,
          blurRadius: 10,
          offset: Offset(0, 50),
        )
      ]),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _option(0, FontAwesomeIcons.house, 'Home',
                selected: optionSelected == 0),
            _option(1, FontAwesomeIcons.cartShopping, 'Cart',
                selected: optionSelected == 1),
            _option(2, FontAwesomeIcons.cubes, 'History',
                selected: optionSelected == 2),
            _option(3, FontAwesomeIcons.user, 'Profile',
                selected: optionSelected == 3),
          ],
        ),
      ),
    );
  }

  Widget _option(int id, IconData icon, String title, {bool selected = false}) {
    const double buttonBorder = 14.0;
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(buttonBorder),
        splashColor: AppTheme.tabColor,
        onTap: () => setState(() => optionSelected = id),
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
          decoration: BoxDecoration(
            color: selected ? AppTheme.tabColor : Colors.transparent,
            borderRadius: BorderRadius.circular(buttonBorder),
          ),
          child: Row(children: [
            selected ? FaIcon(icon, color: Colors.white) : FaIcon(icon),
            const SizedBox(width: 10),
            Text(
              selected ? title : '',
              style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),
            )
          ]),
        ),
      ),
    );
  }
}
