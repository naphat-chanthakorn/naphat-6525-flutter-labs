/// Pets Screen
///
/// This widget is
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2025-12-22
library;

import 'package:flutter/material.dart';
import '../components/pet_card.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Pet Gallery')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Center(
                    child: PetCard(
                      name: 'Bird',
                      imageUrl:
                          'https://ichef.bbci.co.uk/news/976/cpsprodpb/67CF/production/_108857562_mediaitem108857561.jpg',
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: PetCard(
                      name: 'Dog',
                      imageUrl:
                          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg',
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Center(
                    child: PetCard(
                      name: 'Cat',
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262_960_720.jpg',
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: PetCard(
                      name: 'Rabbit',
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2019/09/19/06/09/peter-rabbit-4488325_1280.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
