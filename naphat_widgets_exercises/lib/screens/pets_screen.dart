/// Pets Screen
///
/// This widget is the pet gallery screen that arranges four PetCard widgets
/// into a centered 2x2 grid layout. Rows and Columns with Expanded are
/// used to evenly space and align the pet cards on the screen.
///
/// ============================================
/// AI DOCUMENTATION
/// Tool: ChatGPT (GPT-5.2)
/// Prompt: Create a Flutter screen that displays a pet gallery using
/// PetCard widgets arranged in a 2x2 grid with Column and Row layout.
/// ============================================
///
/// EXPLANATION (in my own words):
/// This is the PetsScreen widget, which serves as the main gallery screen.
/// It uses a Scaffold to provide basic app structure, including an AppBar
/// and a body centers a Column that contains two Rows, each displaying
/// two PetCard widgets. Expanded widgets are used to ensure that each
/// PetCard takes equal horizontal space within a row.
///
/// VERIFICATION:
/// The screen was tested by running the app on an emulator, Pixel 8.
/// Verified that all images load correctly from their URLs, and no overflow
/// or alignment issues occur.
///
/// MODIFICATIONS:
/// Used as generated - tested with Flutter emulator and hot reload.
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
