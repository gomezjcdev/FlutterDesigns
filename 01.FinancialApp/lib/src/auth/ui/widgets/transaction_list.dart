import 'package:flutter/material.dart';

import 'package:financial_app/src/auth/ui/model/transaction_item.dart';
import 'package:financial_app/src/auth/ui/widgets/transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<TransactionItemModel> listItems = [
    TransactionItemModel(
      id: 1,
      icon: Icons.arrow_upward,
      title: 'Sent',
      subtitle: 'Sending payment to clients',
      value: 150,
    ),
    TransactionItemModel(
      id: 2,
      icon: Icons.arrow_downward,
      title: 'Receive',
      subtitle: 'Receiving salary from company',
      value: 250,
    ),
    TransactionItemModel(
      id: 3,
      icon: Icons.attach_money_sharp,
      title: 'Loan',
      subtitle: 'Loan for the car',
      value: 400,
    )
  ];

  TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'detail'),
        child: TransactionItem(
          transactionItem: listItems[index],
        ),
      ),
      itemCount: 3,
      separatorBuilder: (_, __) => const SizedBox(height: 20),
    );
  }
}
