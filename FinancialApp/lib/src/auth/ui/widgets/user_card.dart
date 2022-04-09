import 'package:financial_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height * 0.43,
      decoration: const BoxDecoration(
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
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Icon(Icons.menu), Icon(Icons.more_vert)],
            ),
            const SizedBox(height: 20),
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
            ),
            const SizedBox(height: 50),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        '\$8900',
                        style: TextStyle(
                          color: titleColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Income',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          )),
                    ],
                  ),
                  const VerticalDivider(
                    color: colorBlack,
                    width: 1,
                  ),
                  Column(
                    children: const [
                      Text(
                        '\$5500',
                        style: TextStyle(
                          color: titleColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Expenses',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          )),
                    ],
                  ),
                  const VerticalDivider(
                    color: colorBlack,
                    width: 1,
                  ),
                  Column(
                    children: const [
                      Text(
                        '\$890',
                        style: TextStyle(
                          color: titleColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Loan',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
