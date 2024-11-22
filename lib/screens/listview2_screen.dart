import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
  final imagePaths = const {
    'Targaryen': 'assets/Targaryen-icon.png',
    'Stark': 'assets/Stark-icon.png',
    'Lannister': 'assets/Lannister-icon.png',
    'Baratheon': 'assets/Baratheon-icon.png',
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
                  print(casa);
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
