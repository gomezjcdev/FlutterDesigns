import 'package:flutter/cupertino.dart';

class TransactionItemModel {
  final int id;
  final IconData icon;
  final bool noBackgroundIcon;
  final String title;
  final String subtitle;
  final int value;

  TransactionItemModel({
    required this.id,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    this.noBackgroundIcon = false,
  });
}
