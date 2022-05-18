import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app/models/animal.dart';
import 'package:pet_app/themes/theme.dart';

class AnimalCard extends StatelessWidget {
  final Animal animal;
  final bool imageLeft;

  const AnimalCard({
    Key? key,
    required this.animal,
    this.imageLeft = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          imageLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        imageLeft ? _image() : _info(context),
        imageLeft ? _info(context) : _image()
      ],
    );
  }

  Container _image() {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: animal.genred == 'male'
            ? AppTheme.imageBackground2
            : AppTheme.imageBackground1,
      ),
      height: 200,
      child: Image(
        image: AssetImage(
          animal.genred == 'male'
              ? 'assets/images/gato2.png'
              : 'assets/images/gato1.png',
        ),
      ),
    );
  }

  Widget _info(BuildContext context) {
    const double radius = 30;
    return Flexible(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: imageLeft
              ? const BorderRadius.only(
                  topRight: Radius.circular(radius),
                  bottomRight: Radius.circular(radius))
              : const BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  bottomLeft: Radius.circular(radius),
                ),
          color: AppTheme.grayBackground,
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(animal.name,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: imageLeft
                              ? AppTheme.yellowTitle
                              : AppTheme.greenTitle)),
                  FaIcon(
                    animal.genred == 'male'
                        ? FontAwesomeIcons.mars
                        : FontAwesomeIcons.venus,
                    color:
                        imageLeft ? AppTheme.yellowTitle : AppTheme.greenTitle,
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(animal.breed,
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: AppTheme.grayTitle)),
              const SizedBox(height: 5),
              Text('${animal.age} years old',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppTheme.grayTitle)),
              const SizedBox(height: 10),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.locationDot,
                    color:
                        imageLeft ? AppTheme.yellowTitle : AppTheme.greenTitle,
                  ),
                  const SizedBox(width: 12),
                  Text('Distance: ',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: AppTheme.grayTitle)),
                  Text('${animal.distanceOnKM} Km',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: imageLeft
                              ? AppTheme.yellowTitle
                              : AppTheme.greenTitle))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
