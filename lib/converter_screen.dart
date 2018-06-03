import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'unit.dart';

class ConverterScreen extends StatelessWidget {
  final List<Unit> units;
  final String name;
  final Color color;
  const ConverterScreen(
      {@required this.units, @required this.name, @required this.color})
      : assert(units != null),
        assert(name != null),
        assert(color != null);

  @override
  Widget build(BuildContext context) {
    final unitWidget = units.map((Unit unit) {
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        color: color,
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();
    return ListView(children: unitWidget);
  }
}
