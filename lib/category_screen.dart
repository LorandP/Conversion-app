import 'package:flutter/material.dart';

import 'category.dart';
import 'unit.dart';

final title = 'Unit Converter';
final titleSize = 30.0;
final bodyColor = Colors.green[100];

class CategoryScreen extends StatelessWidget {
  const CategoryScreen();

  static const categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const baseColor = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget buildCategoryWidget(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }
  /// Creates a list of Unit objects
  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];
    for (var index = 0; index < categoryNames.length; index++) {
      categories.add(Category(
        name: categoryNames[index],
        color: baseColor[index],
        iconLocation: Icons.cake,
        unit: _retrieveUnitList(categoryNames[index]),
      ));
    }

    final listView = Container(
      color: bodyColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: buildCategoryWidget(categories)
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
        backgroundColor: bodyColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
