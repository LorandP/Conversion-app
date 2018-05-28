import 'package:flutter/material.dart';

import 'category_route.dart';

const categoryName = 'Cake';
const categoryIcon = Icons.cake;
const categoryColor = Colors.green;

/*class HelloClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.lightGreenAccent,
        child: Container(
          height: 100.0,
          child: InkWell(
              borderRadius: BorderRadius.circular(20.0),
              highlightColor: Colors.amberAccent[100],
              splashColor: Colors.amberAccent[400],
              onTap: () {
                print('I was tapped');
              },
              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(right: 16.0),
                          child: Icon(Icons.notifications)
                      ),
                      Center(
                          child: Text(
                              'Notification',
                              textAlign: TextAlign.center,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .display1.
                          )
                      )
                    ],
                  )
              )

          ),
        )

    ));
  }
}*/

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
          child: CategoryRoute()
        ),
      )
    );
  }
}

void main() {
  print('Hello');
  runApp(UnitConverterApp());
}
