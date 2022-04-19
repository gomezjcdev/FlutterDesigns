import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _option(0, FontAwesomeIcons.house, 'Home', selected: optionSelected == 0),
          _option(1, FontAwesomeIcons.cartShopping, 'Cart', selected: optionSelected == 1),
          _option(2, FontAwesomeIcons.cubes, 'History', selected: optionSelected == 2),
          _option(3, FontAwesomeIcons.user, 'Profile', selected: optionSelected == 3),
        ],
      ),
    );
  }

  Widget _option(int id, IconData icon, String title, {bool selected = false}) {
    return InkWell(
      onTap: () => setState(() {optionSelected = id;}),
      child: Ink(
        child: Row(children: [FaIcon(icon), Text(selected ? title : '')]),
      ),
    );
  }
}
