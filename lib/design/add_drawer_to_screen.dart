import 'package:flutter/material.dart';

class AddDrawerPage extends StatelessWidget {
  const AddDrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Drawer Page'),
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Draw Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // update the state of the app
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // update the state of the app
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
