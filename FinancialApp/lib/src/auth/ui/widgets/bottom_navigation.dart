import 'package:flutter/material.dart';
import 'package:financial_app/src/utils/colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.home_outlined,
            color: tabOptionsColor,
          ),
          const Icon(
            Icons.credit_card_outlined,
            color: tabOptionsColor,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            child: const Icon(
              Icons.add,
              color: whiteColor,
            ),
          ),
          const Icon(
            Icons.attach_money,
            color: tabOptionsColor,
          ),
          const Icon(
            Icons.account_circle_outlined,
            color: tabOptionsColor,
          )
        ],
      ),
    );
  }
}
