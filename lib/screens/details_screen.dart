import 'package:flutter/material.dart';
import 'package:fl_components/widgets/casas_card.dart';

class detailsScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const detailsScreen({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: InfoCard(
              imagePath: imagePath,
              title: title,
              description: description,
            ),
          ),
        ],
      ),
    );
  }
}
