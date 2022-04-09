import 'package:financial_app/src/utils/colors.dart';
import 'package:flutter/material.dart';


class OverviewSection extends StatelessWidget {
  const OverviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              'Overview',
              style: TextStyle(
                color: titleColor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(width: 10),
            Stack(
              children: const [
                Icon(
                  Icons.notifications_outlined,
                  color: tabOptionsColor,
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Icon(
                    Icons.brightness_1,
                    size: 8.0,
                    color: Colors.redAccent,
                  ),
                )
              ],
            ),
          ],
        ),
        const Text(
          'Sept 13, 2020',
          style: TextStyle(
            color: titleColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
