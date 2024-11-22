import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://images8.alphacoders.com/110/1103710.jpg', nombre: 'The Mandalorian'),
        ],
      )
    );
  }
}

