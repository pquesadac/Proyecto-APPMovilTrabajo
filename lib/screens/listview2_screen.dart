import 'package:flutter/material.dart';
import 'package:fl_components/screens/details_screen.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
  final imagePaths = const {
    'Targaryen': 'assets/Targaryen-icon.png',
    'Stark': 'assets/Stark-icon.png',
    'Lannister': 'assets/Lannister-icon.png',
    'Baratheon': 'assets/Baratheon-icon.png',
  };

  final descriptions = const {
    'Targaryen':'Casa Targaryen: Descendientes de Valyria, conocidos por sus dragones.',
    'Stark': 'Casa Stark: Los guardianes del Norte, leales y honorables.',
    'Lannister': 'Casa Lannister: Ricos y poderosos, conocidos por su oro.',
    'Baratheon': 'Casa Baratheon: Guerreros fieros y leales.',
  };

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
          //backgroundColor: Colors.blueAccent,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              final casa = options[index];
              return ListTile(
                leading: Image.asset(imagePaths[casa]!, width: 40, height: 40),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                title: Text(casa),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => detailsScreen(
                        title: casa,
                        imagePath: imagePaths[casa]!,
                        description: descriptions[casa]!,
                      ),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
