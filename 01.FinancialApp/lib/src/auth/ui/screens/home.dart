import 'package:flutter/material.dart';

import 'package:financial_app/src/auth/ui/widgets/transaction_list.dart';
import 'package:financial_app/src/auth/ui/widgets/overview_section.dart';
import 'package:financial_app/src/auth/ui/widgets/user_card.dart';
import 'package:financial_app/src/utils/colors.dart';
import 'package:financial_app/src/auth/ui/widgets/bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              children: [
                const UserCard(),
                const SizedBox(height: 30),
                const OverviewSection(),
                const SizedBox(height: 30),
                TransactionList()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}


