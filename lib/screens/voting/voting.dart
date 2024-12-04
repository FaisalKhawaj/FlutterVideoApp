
import 'package:flutter/material.dart';

class Voting extends StatelessWidget {
  const Voting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voting'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Voting')
          ],
        ),
      ),
    );
  }
}
