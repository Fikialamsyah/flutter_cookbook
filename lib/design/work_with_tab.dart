import 'package:flutter/material.dart';

class WorkWithTabPage extends StatelessWidget {
  const WorkWithTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Work with Tab'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car,)),
                Tab(icon: Icon(Icons.directions_transit),),
                Tab(icon: Icon(Icons.directions_bike),)
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike)
            ],
          ),
        )),
    );
  }
}
