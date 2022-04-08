import 'package:flutter/material.dart';
import 'package:financial_app/src/utils/colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 13,
      child: SizedBox(
        width: width,
        height: 60,
        child: Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.home_outlined,
                  color: textColor,
                ),
                const Icon(
                  Icons.credit_card_outlined,
                  color: textColor,
                ),
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: whiteColor,
                  ),
                ),
                const Icon(
                  Icons.attach_money,
                  color: textColor,
                ),
                const Icon(
                  Icons.account_circle,
                  color: textColor,
                )
              ],
            )),
      ),
    );
  }
}
