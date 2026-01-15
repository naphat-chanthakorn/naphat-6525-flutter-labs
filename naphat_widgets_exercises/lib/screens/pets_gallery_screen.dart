/// Pet Gallery Screen
///
/// This widget displays a 2×2 grid pet gallery layout.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The PetsGalleryScreen is implemented as a StatelessWidget.
/// It returns a Scaffold with an AppBar titled "Pet Gallery".
/// The body contains a Column with two Rows to create a 2×2 grid layout.
/// Each Row uses mainAxisAlignment.spaceEvenly to evenly space
/// the PetCardWithModel widgets. Every PetCardWithModel is wrapped
/// with an Expanded widget and receives a PetModel instance.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2026-01-05
library;

import 'package:flutter/material.dart';
import '../components/pet_card_with_model.dart';
import '../models/pet_model.dart';

class PetsGalleryScreen extends StatelessWidget {
  const PetsGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bird = PetModel(
      name: 'Bird',
      imageUrl:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/67CF/production/_108857562_mediaitem108857561.jpg',
    );

    final dog = PetModel(
      name: 'Dog',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg',
      backgroundColor: Colors.brown,
    );

    final cat = PetModel(
      name: 'Cat',
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262_960_720.jpg',
      textColor: Colors.black,
    );

    final rabbit = PetModel(
      name: 'Rabbit',
      imageUrl:
          'https://cdn.pixabay.com/photo/2019/09/19/06/09/peter-rabbit-4488325_1280.jpg',
      backgroundColor: Colors.green,
      textColor: Colors.black,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Pet Gallery')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(child: PetCardWithModel(pet: bird)),
              ),
              Expanded(
                child: Center(child: PetCardWithModel(pet: dog)),
              ),
            ],
          ),
          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(child: PetCardWithModel(pet: cat)),
              ),
              Expanded(
                child: Center(child: PetCardWithModel(pet: rabbit)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
