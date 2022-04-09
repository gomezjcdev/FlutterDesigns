import 'package:financial_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {

  final containerStyles = const BoxDecoration(
    color: whiteColor,
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
    boxShadow: [
      BoxShadow(
        color: secondaryColor,
        blurRadius: 30,
        offset: Offset(0, 5),
        spreadRadius: 0,
      )
    ],
  );

  final infoTitleStyle = const TextStyle(
    color: titleColor,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  final infoValueStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height * 0.43,
      decoration: containerStyles,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            _cardOptions(),
            const SizedBox(height: 20),
            ..._userInformation(),
            const SizedBox(height: 50),
            _userStatistics()
          ],
        ),
      ),
    );
  }

  Widget _userStatistics() {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _statisticsInfo('8900', 'income'),
          const VerticalDivider(color: colorBlack, width: 1),
          _statisticsInfo('5500', 'Expenses'),
          const VerticalDivider(color: colorBlack, width: 1),
          _statisticsInfo('890', 'Loan'),
        ],
      ),
    );
  }

  Column _statisticsInfo(String title, String value) {
    return Column(
      children: [
        Text('\$$title', style: infoTitleStyle),
        const SizedBox(height: 10),
        Text(value, style: infoValueStyle),
      ],
    );
  }

  Row _cardOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [Icon(Icons.menu), Icon(Icons.more_vert)],
    );
  }

  List<Widget> _userInformation() {
    return [
      const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/images/photo.jpeg'),
      ),
      const SizedBox(height: 15),
      const Text(
        'Hira Riaz',
        style: TextStyle(
          color: titleColor,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      const SizedBox(height: 5),
      const Text(
        'UX/UI Designer',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      )
    ];
  }
}
