import 'package:fl_components/theme/app_theme.dart';
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
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
                  title: Text('Título de la tarjeta'),
                  subtitle: Text('Ea duis aute cillum ipsum duis duis ex nostrud ad irure cillum. Aliquip cupidatat eiusmod magna elit excepteur ullamco. Tempor et sunt officia deserunt excepteur. In esse duis sint consequat est magna fugiat dolore. Magna dolor laborum sint elit quis nisi tempor occaecat. Ex exercitation amet proident ut ipsum eiusmod reprehenderit reprehenderit duis. Consectetur ex nulla nulla minim velit cupidatat sit.'),
                )

              ],
            ),
          )
        ],
      )
    );
  }
}