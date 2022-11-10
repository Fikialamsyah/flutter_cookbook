import 'package:flutter/material.dart';

class UseThemesPage extends StatelessWidget {
  const UseThemesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use Theme'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Text('Text with a background color',
          style: Theme.of(context).textTheme.headline6,),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
