import 'package:financial_app/src/auth/ui/model/transaction_item.dart';
import 'package:financial_app/src/auth/ui/widgets/main_button.dart';
import 'package:financial_app/src/auth/ui/widgets/radial_menu.dart';
import 'package:financial_app/src/auth/ui/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import 'package:financial_app/src/utils/colors.dart';

class TransactionDetail extends StatelessWidget {
  static const titleStyle = TextStyle(
    color: titleColor,
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  const TransactionDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.chevron_left, size: 40),
                  ),
                  const Icon(Icons.search_outlined, size: 40),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Recent Transactions', style: titleStyle),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: tabOptionsColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  TransactionOption(selected: true, title: 'All'),
                  SizedBox(width: 15),
                  TransactionOption(selected: false, title: 'Income'),
                  SizedBox(width: 15),
                  TransactionOption(selected: false, title: 'Expense'),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Today', style: titleStyle),
              const SizedBox(height: 20),
              TransactionItem(
                transactionItem: TransactionItemModel(
                  title: 'Payment',
                  subtitle: 'Payment from andrea',
                  icon: Icons.email_outlined,
                  value: 30,
                  id: 1,
                ),
              ),
              const SizedBox(height: 20),
              const Expanded(child: Center(child: RadialMenu())),
              const SizedBox(height: 20),
              MainButton(
                onPressed: () => print('clicked'),
                text: 'See Details',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionOption extends StatelessWidget {
  final bool selected;
  final String title;

  const TransactionOption(
      {Key? key, required this.selected, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? buttonColor : whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: const [
          BoxShadow(
            color: secondaryColor,
            blurRadius: 15,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          color: selected ? whiteColor : tabOptionsColor,
        ),
      ),
    );
  }
}
