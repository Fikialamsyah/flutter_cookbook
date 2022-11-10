import 'package:flutter/material.dart';

class SwipeDismissPage extends StatefulWidget {
  const SwipeDismissPage({Key? key}) : super(key: key);

  @override
  State<SwipeDismissPage> createState() => _SwipeDismissPageState();
}

class _SwipeDismissPageState extends State<SwipeDismissPage> {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe Dismiss'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: UniqueKey(),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('$item dismissed')));
            },
            background: Container(color: Colors.red,),
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}
