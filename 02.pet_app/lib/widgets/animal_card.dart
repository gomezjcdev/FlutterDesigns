import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app/models/animal.dart';
import 'package:pet_app/themes/theme.dart';

class AnimalCard extends StatelessWidget {
  final Animal animal;

  const AnimalCard({
    Key? key,
    required this.animal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppTheme.grayBackground,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(animal.name),
                  FaIcon(animal.genred == 'male'
                      ? FontAwesomeIcons.mars
                      : FontAwesomeIcons.venus)
                ],
              ),
              Text(animal.breed),
              Text('${animal.age} years old'),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.locationDot,
                      color: AppTheme.greenTitle),
                  const SizedBox(width: 12),
                  Text('Distance: '),
                  Text('${animal.distanceOnKM} Km')
                ],
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: animal.genred == 'male'
                  ? AppTheme.imageBackground2
                  : AppTheme.imageBackground1),
          height: 200,
          child: Image(
            image: AssetImage(animal.genred == 'male'
                ? 'assets/images/gato2.png'
                : 'assets/images/gato1.png'),
          ),
        )
      ],
    );
  }
}
