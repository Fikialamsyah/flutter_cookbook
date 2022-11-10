import 'package:flutter/material.dart';

class AddSnackbarPage extends StatelessWidget {
  const AddSnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Snackbar Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: const Text('Yeay! A Snackbar'),
                action: SnackBarAction(
                  label: 'undo',
                  onPressed: () {
                    
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: const Text('Show Snackbar')),
      ),
    );
  }
}
