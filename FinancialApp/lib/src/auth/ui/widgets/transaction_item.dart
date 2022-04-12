import 'package:flutter/material.dart';

import 'package:financial_app/src/auth/ui/model/transaction_item.dart';
import 'package:financial_app/src/utils/colors.dart';

class TransactionItem extends StatelessWidget {
  final TransactionItemModel transactionItem;

  const TransactionItem({Key? key, required this.transactionItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: secondaryColor,
              blurRadius: 10,
              offset: Offset(0, 5),
              spreadRadius: 0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            decoration: !transactionItem.noBackgroundIcon
                ? null
                : const BoxDecoration(
                    color: iconBackground,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
            width: 50,
            height: 50,
            child: Icon(
              transactionItem.icon,
              size: 35,
              color: !transactionItem.noBackgroundIcon
                  ? buttonColor
                  : Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactionItem.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    transactionItem.subtitle,
                    style: const TextStyle(
                      fontSize: 13,
                      color: textColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20, top: 20),
            child: Text(
              '\$${transactionItem.value}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
