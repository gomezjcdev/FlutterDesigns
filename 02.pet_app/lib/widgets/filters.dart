import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app/themes/theme.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {

  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _filterOption(context, icon: FontAwesomeIcons.filter, option: 0),
        _filterOption(context, title: 'Cat', option: 1),
        _filterOption(context, title: 'Dog', option: 2),
        _filterOption(context, title: 'Bird', option: 3),
        _filterOption(context, title: 'Other', option: 4),
      ],
    );
  }

  Widget _filterOption(BuildContext context, {IconData? icon, String? title, required int option}) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        splashColor: AppTheme.tabColor,
        onTap: () => setState(() => selectedOption = option),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: selectedOption == option ? AppTheme.tabColor : AppTheme.grayBackground),
          child: icon != null
              ? FaIcon(icon, color: selectedOption == option ? Colors.white : AppTheme.colorBlack)
              : Text(
            title!,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: selectedOption == option ? Colors.white : AppTheme.colorBlack),
          ),
        ),
      ),
    );
  }
}
