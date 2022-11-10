import 'package:flutter/material.dart';

class UpdateUIOrientationPage extends StatelessWidget {
  const UpdateUIOrientationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Orientation'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              children: List.generate(100, (index) {
                return Center(
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                );
              }));
        },
      ),
    );
  }
}
