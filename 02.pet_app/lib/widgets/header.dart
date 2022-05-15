import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app/themes/theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const FaIcon(FontAwesomeIcons.bars, color: Colors.black),
          Column(
            children: [
              Text(
                'Location',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: AppTheme.grayTitle, fontSize: 18),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.locationDot, color: AppTheme.greenTitle),
                  const SizedBox(width: 12),
                  Text(
                    'Gangnam',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: AppTheme.greenTitle),
                  ),
                  Text(
                    ', Soul',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: AppTheme.greenTitle,
            child: const FaIcon(FontAwesomeIcons.userNinja, color: Colors.white),
          )
        ],
      ),
    );
  }
}
