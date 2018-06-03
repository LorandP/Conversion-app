import 'package:flutter/material.dart';

import 'category_screen.dart';

const categoryName = 'Cake';
const categoryIcon = Icons.cake;
const categoryColor = Colors.green;


class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: CategoryScreen()
        ),
      )
    );
  }
}

void main() {
  print('Hello');
  runApp(UnitConverterApp());
}
