import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static const Color CasaBaratheon = Colors.yellow;
  static const Color CasaLannister = Colors.red;
  static const Color CasaStark = Colors.blue;
  static const Color CasaTargaryen = Color.fromARGB(255, 98, 97, 99);

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          iconTheme: IconThemeData(color: Colors.white)),
      //ListTile Theme
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),
      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      //FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        shape: StadiumBorder(),
        elevation: 5,
        foregroundColor: Colors.white,
      ));

      static Color getAppBarColor(String houseName) {
    switch (houseName) {
      case 'Baratheon':
        return CasaBaratheon;
      case 'Lannister':
        return CasaLannister;
      case 'Stark':
        return CasaStark;
      case 'Targaryen':
        return CasaTargaryen;
      default:
        return primary;
    }
  }
}