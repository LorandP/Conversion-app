import 'package:flutter/material.dart';
import 'converter_screen.dart';
import 'unit.dart';

final rowHeight = 100.0;
final borderRadius = BorderRadius.circular(rowHeight / 2);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> unit;
  const Category(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.iconLocation,
      @required this.unit})
      : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        assert(unit != null),
        super(key: key);

  void _navigateToCovnerter(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    Navigator
        .of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text(
            name,
            style: Theme.of(context).textTheme.display1,
          ),
          centerTitle: true,
          backgroundColor: color[100],
        ),
        body: ConverterScreen(
          color: color,
          name: name,
          units: unit,
        ),
        resizeToAvoidBottomPadding: false,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
        color: Colors.transparent,
        child: Container(
            height: rowHeight,
            child: InkWell(
              borderRadius: borderRadius,
              highlightColor: color,
              splashColor: color,
              onTap: () {
                _navigateToCovnerter(context);
              },
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Icon(iconLocation, size: 60.0),
                      ),
                      Center(
                        child: Text(name,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline),
                      ),
                    ],
                  )),
            )));
  }
}
