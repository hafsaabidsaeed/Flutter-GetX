import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/light_dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ThemeData _darkTheme = ThemeData(

        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.amber,
          disabledColor: Colors.grey,
        ));

    ThemeData _lightTheme = ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blue,
          disabledColor: Colors.grey,
        ));

    return GetMaterialApp(
      theme: _lightTheme,
      darkTheme: _darkTheme,
      themeMode: ThemeMode.system,
      title: 'Flutter GetX',
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context){
        return const GetXUtilScreen();
      })
    );

  }
}