import 'package:financial_app/src/auth/ui/widgets/bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          BottomNavigationItem(icon: Icons.home_outlined),
          BottomNavigationItem(icon: Icons.credit_card_outlined),
          BottomNavigationItem(icon: Icons.add, isMainOption: true),
          BottomNavigationItem(icon: Icons.attach_money),
          BottomNavigationItem(icon: Icons.account_circle_outlined),
        ],
      ),
    );
  }
}
