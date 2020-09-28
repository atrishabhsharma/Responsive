import 'package:flutter/material.dart';
import 'package:reponsive/utils/config.dart';
import 'package:reponsive/utils/styling.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: 'Responsive Demo',
          theme: AppTheme.lightTheme,
          home: HomeScreen(),
        );
      });
    });
  }
}
