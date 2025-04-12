import 'package:flutter/material.dart';
import 'package:rpc/shared/styled_text.dart';
import 'package:rpc/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
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
            const Center(
              child: StyledHeading("Create a name & slogan for you character"),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
