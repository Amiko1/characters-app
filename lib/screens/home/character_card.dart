import 'package:flutter/material.dart';
import 'package:rpc/models/character.dart';
import 'package:rpc/shared/styled_text.dart';
import 'package:rpc/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Image.asset(
              "assets/img/vocations/${character.vocation.image}",
              width: 80,
            ),
            SizedBox(width: 20),
            Column(
              children: [
                StyledHeading(character.name),
                StyledText(character.vocation.title),
              ],
            ),
            Expanded(child: SizedBox()),
            IconButton(
              onPressed: () {
                // navigate to character profile screen
              },
              icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
            ),
          ],
        ),
      ),
    );
  }
}
