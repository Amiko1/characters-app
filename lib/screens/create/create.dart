import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpc/shared/styled_button.dart';
import 'package:rpc/shared/styled_text.dart';
import 'package:rpc/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      print('name must  not be empty');

      return;
    }

    if (_sloganController.text.trim().isEmpty) {
      print('slogan must  not be empty');

      return;
    }

    print(_nameController.text);
    print(_sloganController.text);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle("Create chracter"), centerTitle: true),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
            const Center(child: StyledHeading("Welcome, new player.")),
            const Center(child: StyledHeading("Create a name & slogan ")),

            const SizedBox(height: 30),

            TextField(
              controller: _nameController,
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.titleMedium,
              ),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                label: StyledText("Character Name"),
              ),
              cursorColor: AppColors.textColor,
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _sloganController,
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.titleMedium,
              ),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chat),
                label: StyledText("Character slogan"),
              ),
              cursorColor: AppColors.textColor,
            ),
            const SizedBox(height: 30),

            Center(
              child: StyledButton(
                onPressed: handleSubmit,
                child: StyledHeading("Create Character"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
