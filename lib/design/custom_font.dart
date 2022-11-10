import 'package:flutter/material.dart';

class CustomFontPage extends StatelessWidget {
  const CustomFontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Font'),
      ),
      body: Center(
        child: Text(
          'Raleway Font Sample',
          style: TextStyle(fontFamily: 'Raleway'),),
      ),
    );
  }
}
