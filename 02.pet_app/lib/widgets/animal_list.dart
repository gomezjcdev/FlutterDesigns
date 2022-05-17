import 'package:flutter/material.dart';
import 'package:pet_app/models/animal.dart';
import 'package:pet_app/widgets/animal_card.dart';

class AnimalList extends StatelessWidget {
  final List<Animal> animals = [
    Animal('Lee Yeon', 'female', 'Anggora Cat', 1, 3.6),
    Animal('Imoogi', 'male', 'Baby Anggora Cat', 1, 3.6)
  ];

  AnimalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final animal = animals[index];
        return AnimalCard(animal: animal, imageLeft: index % 2 != 0);
      },
      itemCount: animals.length,
      separatorBuilder: (_, __) => const SizedBox(height: 20),
    );
  }
}
