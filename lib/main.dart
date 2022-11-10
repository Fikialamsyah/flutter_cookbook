import 'package:flutter/material.dart';
import 'package:flutter_cookbook/design/custom_font.dart';
import 'package:flutter_cookbook/design/update_ui_orientation.dart';
import 'package:flutter_cookbook/design/use_themes.dart';
import 'package:flutter_cookbook/design/work_with_tab.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WorkWithTabPage(),
    );
  }
}

// with custom theme
class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind')
        )
      ),
      home: UseThemesPage(),
    );
  }
}