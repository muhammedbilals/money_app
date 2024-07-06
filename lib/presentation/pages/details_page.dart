import 'package:flutter/material.dart';
import 'package:money_app/core/style/appstyles.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Details"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(22.0),
        child: Column(
          children: [
            Text(
              'Muhammed Bilal',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
