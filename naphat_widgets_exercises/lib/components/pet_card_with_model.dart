import 'package:flutter/material.dart';
import '../models/pet_model.dart';

class PetCardWithModel extends StatelessWidget {
  final PetModel pet;

  const PetCardWithModel({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: Image.network(
            pet.imageUrl,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),

        Container(
          width: 120,
          padding: const EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: pet.backgroundColor,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(12),
            ),
          ),
          child: Text(
            pet.name,
            style: TextStyle(
              color: pet.textColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
