import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const InfoCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(imagePath, fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 19),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
