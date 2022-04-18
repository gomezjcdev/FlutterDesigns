import 'package:financial_app/src/Auth/ui/widgets/formfield.dart';
import 'package:flutter/material.dart';

import 'package:financial_app/src/utils/colors.dart';

class FormFieldContainer extends StatelessWidget {
  final CustomFormField formField;

  const FormFieldContainer({
    Key? key,
    required this.formField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        boxShadow: [
          BoxShadow(
            color: secondaryColor,
            blurRadius: 10,
            offset: Offset(0, 5),
            spreadRadius: 0,
          )
        ],
      ),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 15.0, bottom: 5.0, left: 30.0, right: 10.0),
          child: formField,
        ),
      ),
    );
  }
}
